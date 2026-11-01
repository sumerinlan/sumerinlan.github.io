---
source: work/2021-05-03-snowflake
source_hash: 981a7890
---

{% include shipped.html %}

2021 年加入 Marketplace 团队，先做 Marketplace 功能，后来做搜索功能。2025 年 2 月晋升为高级软件工程师，之后转到 Search and Discovery 团队，后来又转到 Marketplace AI Products 团队。在三个主要项目里负责前端：

## AI 共享：Semantic View、Agent 和 Skill {#ai-sharing}

**角色：** 唯一的前端 DRI / 功能负责人（POC），Marketplace AI Products 团队，2025 年至今

### 背景

客户开始在 Snowflake 上构建 AI 后，需要共享的东西多了：通过 listing 把 semantic view 和 agent 共享给其他账号，在自己的账号里把 skill 共享给同事。

### 负责的工作

- **Snowflake Cortex AI Products Sharing（2025 年至今）：** 开发了一套共用的前端模式，用于在 provider 和 consumer 两侧共享 AI 能力和语义对象。其中包括创建 listing 时的 grant-select-on-share，以及供 provider 查看 share 内容的 share 详情页。这些模式用在了 semantic view 共享、agent 共享（从 agent 创建一直到上线），以及 AI-ready listing 上。
- **Skill Catalog（2026 年至今）：** 作为前端负责人，在设计开始前和 PM 一起定义了 Skill Catalog 的工作流程。开发了浏览和治理界面，从公开预览一直做到 GA，包括：安全扫描的审核和覆盖、委派管理、认证、版本管理，以及 owner 对可发现性和分类的设置。负责范围从 Snowsight 扩展到 Cortex Code 里的 catalog，和 CLI、桌面端团队一起规划，并开发了对话中的 skill 推荐。

## Horizon Catalog：发现与导航 {#horizon-catalog}

**角色：** 前端对接人（POC），先在 Marketplace 团队，后在 Search and Discovery 团队，2024–2025 年

### 背景

这段时间里，负责范围逐步扩大。一开始参与具体的可发现性和访问控制流程，之后成为 catalog 功能的前端对接人，最后负责整个 Horizon Catalog 产品共用的导航改版。

### 负责的工作

- **访问与可发现性（2024–2025 年）：** 在 Universal Search 的结果卡片里开发了 UI 流程。对于能搜到、但没有权限访问的对象，这些流程把账号内的联系人信息和外部访问方式区分开。担任 Contacts 的前端对接人：开发了联系人的创建、授权和分配流程，并在需求陆续增加、交付时间提前时调整实现。
- **导航（2025 年）：** 重构了 Horizon Catalog 的导航，包括浮出菜单、固定、新手引导流程。负责一个分多个阶段的左侧导航 A/B 测试，一直做到 GA，并开发了一套可复用的产品内问卷机制。

## Marketplace：Listing 与发现 {#marketplace}

**角色：** 软件工程师，Marketplace 团队，2021 年–2025 年初

### 背景

四年里，负责范围稳步扩大。入职初期在已有的 provider 发布模式里参与开发。之后负责和收入、合规相关的核心功能（auto-fulfillment、private listing、data dictionary）。流量增长后，又推动了性能和大规模搜索方面的工作。

### 负责的工作

- **打基础（2021 年）：** 入职第一个季度，开发了 provider 发布界面的改版，覆盖各个 listing 创建页面，并搭建了最早的端到端测试。开发了不受区域限制的深层链接，让外部的 listing URL 打开正确的 Marketplace 页面。还加了复制分享链接的按钮，方便 provider 分发链接。
- **负责范围扩大（2021–2022 年）：** 在 Listing Auto-Fulfillment 上，从早期参与者变成后期阶段的工程对接人，并在底层 API 变化时调整 provider 界面。同一时期，开始负责 Private Listings：完成了技术设计，以及 provider 和 consumer 两侧的详情页，从预览一直做到上线。
- **Data Dictionary（2023 年）：** 主导 Data Dictionary 从预览到 GA，以及 GA 之后的改进（搜索、行内编辑、telemetry）。把它接入 private listing 的发布流程，以及 provider 和 consumer 的预览流程。
- **规模与性能（2023–2024 年）：** 把 Marketplace 首页迁移到统一的 browse API，弃用了旧的查询路径。修正了指标的测量方式，让首页加载时间统计准确。LCP（P75）从 4.17s 降到 3.2s，页面加载（P95）从 20s 降到 8.3s。还推动了 Universal Search 的筛选项目，包括 corpus、database、schema 和日期筛选，从需求一直做到生产环境上线。
- **带新人：** 帮助四位新工程师在第一个项目的初期上手，帮他们把模糊、设计还没定的需求拆成能动手实现的工作。
