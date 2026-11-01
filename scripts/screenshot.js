// Screenshots of the main pages in light, dark and phone width.
// Usage: scripts/build.sh && node scripts/screenshot.js <out-dir> [page ...]
// Pages default to the five main ones; pass paths like /about/ to choose.
const { chromium } = require('playwright');
const http = require('http');
const fs = require('fs');
const path = require('path');

const site = path.join(__dirname, '..', '_site');
const out = process.argv[2] || 'screenshots';
const pages = process.argv.slice(3).length ? process.argv.slice(3)
    : ['/', '/about/', '/experience/', '/projects/', '/experience/snowflake'];
const views = [
    { name: 'light', width: 1280, colorScheme: 'light' },
    { name: 'dark', width: 1280, colorScheme: 'dark' },
    { name: 'phone', width: 390, colorScheme: 'light' },
];
const types = { '.html': 'text/html', '.css': 'text/css', '.js': 'text/javascript', '.svg': 'image/svg+xml',
    '.png': 'image/png', '.jpg': 'image/jpeg', '.json': 'application/json' };

// a small static server for _site
const server = http.createServer((req, res) => {
    let file = path.join(site, decodeURIComponent(req.url.split('?')[0]));
    if (fs.existsSync(file) && fs.statSync(file).isDirectory()) file = path.join(file, 'index.html');
    // /experience/snowflake is served from experience/snowflake.html, as on GitHub Pages
    else if (!fs.existsSync(file) && fs.existsSync(file + '.html')) file += '.html';
    if (!fs.existsSync(file)) { res.writeHead(404); return res.end(); }
    res.writeHead(200, { 'Content-Type': types[path.extname(file)] || 'application/octet-stream' });
    fs.createReadStream(file).pipe(res);
});

server.listen(0, async () => {
    const base = `http://localhost:${server.address().port}`;
    fs.mkdirSync(out, { recursive: true });
    const browser = await chromium.launch();
    for (const view of views) {
        const context = await browser.newContext({ viewport: { width: view.width, height: 860 }, colorScheme: view.colorScheme });
        const page = await context.newPage();
        page.on('pageerror', (e) => console.log(`script error on ${page.url()}: ${e.message}`));
        for (const p of pages) {
            await page.goto(base + p);
            await page.waitForTimeout(300);
            const name = (p.replace(/\.html$/, '').replace(/[^a-z0-9]+/gi, '-').replace(/^-|-$/g, '') || 'home') + `-${view.name}.png`;
            await page.screenshot({ path: path.join(out, name), fullPage: true });
        }
        await context.close();
    }
    await browser.close();
    server.close();
    console.log(`screenshots in ${out}`);
});
