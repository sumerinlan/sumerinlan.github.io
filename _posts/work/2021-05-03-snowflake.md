---
# basic info
layout: post
title: Snowflake
date: 2021-05-03 -0800
end_date: present
# page info
type: Work
tags: [Go, React, TypeScript]
# project info
role: Software Engineer › Senior Software Engineer
location: Menlo Park, CA
# content info
excerpt: Full-time @ Marketplace › Search and Discovery › Marketplace AI Products
excerpt_zh: 全职 @ Marketplace › Search and Discovery › Marketplace AI Products
# launch timeline (_includes/shipped.html); each theme links to its section
shipped_themes:
    - { id: marketplace, name: Marketplace, section: marketplace }
    - { id: catalog, name: Horizon Catalog, section: horizon-catalog }
    - { id: ai, name: AI sharing, name_zh: AI 共享, section: ai-sharing }
shipped:
    - { year: 2022, name: Private Listings, theme: marketplace }
    - { year: 2022, name: Listing Auto-Fulfillment, theme: marketplace }
    - { year: 2023, name: Mobile Marketplace, theme: marketplace }
    - { year: 2023, name: Data Dictionary, theme: marketplace }
    - { year: 2024, name: Listing Data Preview, theme: marketplace }
    - { year: 2024, name: Native App Multi-Install, theme: marketplace }
    - { year: 2025, name: Contacts, theme: catalog }
    - { year: 2025, name: Horizon Catalog Navigation, theme: catalog }
    - { year: 2025, name: Semantic View Sharing, theme: ai }
    - { year: 2026, name: Agent Sharing, theme: ai }
    - { year: 2026, name: Skill Catalog, theme: ai }
---

{% include shipped.html %}

Joined the Marketplace team in 2021, building marketplace and later search features. Promoted to Senior Software Engineer in February 2025, then moved to Search and Discovery and later to Marketplace AI Products. Frontend ownership across three major initiatives:

## AI Sharing: Semantic Views, Agents & Skills {#ai-sharing}

**Role:** Sole Frontend DRI / Feature Lead (POC), Marketplace AI Products team — 2025 – Present

### Context & Problem

As customers started building AI on Snowflake, they needed to share more than tables: semantic views and agents with other accounts through listings, and skills with teammates in their own account.

### Technical Ownership & Execution

- **Snowflake Cortex AI Products Sharing (2025 – Present):** Built shared frontend patterns for sharing AI capabilities and semantic objects across provider and consumer surfaces. These include grant-select-on-share in listing creation, and a share detail page where providers view share content. Applied these patterns across semantic view sharing, agent sharing (from agent creation through launch) and AI-ready listings.
- **Skill Catalog (2026 – Present):** As frontend owner, defined the Skill Catalog workflows with PM ahead of design. Built the browse and governance UI, from public preview through GA: security scan review and override, delegated administration, certification, versioning, and owner settings for discoverability and categories. Expanded ownership from Snowsight to the catalog in Cortex Code, planning with the CLI and desktop teams, and built in-chat skill recommendations.

## Horizon Catalog: Discovery & Navigation {#horizon-catalog}

**Role:** Frontend point of contact (POC), Marketplace, then Search and Discovery — 2024 – 2025

### Context & Problem

Across this period, ownership grew from contributing on specific discoverability and access-control flows to becoming the frontend point of contact on catalog features, and eventually to owning a navigation overhaul used across the broader Horizon Catalog product.

### Technical Ownership & Execution

- **Access & Discoverability (2024–2025):** Built UI flows in Universal Search result cards to distinguish in-account contact info from external access patterns for objects that are discoverable but not accessible. Served as the frontend engineering point of contact for Contacts — built contact creation, privilege-granting, and assignment flows, adapting the implementation as scope arrived and delivery timelines accelerated.
- **Navigation (2025):** Refactored Horizon Catalog navigation — flyover menus, pinning, onboarding flows. Owned a multi-phase left-nav A/B test through to GA, building a reusable in-product survey mechanism.

## Marketplace: Listings & Discovery {#marketplace}

**Role:** Software Engineer, Marketplace team — 2021 – early 2025

### Context & Problem

Across four years, the scope of what I owned grew steadily — from contributing within established provider-publishing patterns during ramp-up, to owning core revenue- and compliance-sensitive capabilities (auto-fulfillment, private listings, data dictionary), to driving performance and search-at-scale work as traffic grew.

### Technical Ownership & Execution

- **Foundations (2021):** Built the provider publishing UI revamp across listing-creation screens and the initial end-to-end test suite during first-quarter ramp-up. Built region-agnostic deep-linking so external listing URLs resolve to the correct marketplace page, plus shareable-URL copy buttons for provider link distribution.
- **Growing Ownership (2021–2022):** On Listing Auto-Fulfillment, responsibility grew from early contributor to engineering point of contact for its later phase, adapting the provider UI as the underlying API changed. Around the same period, ownership also extended to Private Listings, where the technical design and both provider and consumer detail surfaces were delivered from preview through launch.
- **Data Dictionary (2023):** Led Data Dictionary from preview through GA and post-GA improvements (search, inline edit, telemetry), integrating it into private-listing publishing and provider/consumer preview workflows.
- **Scale & Performance (2023–2024):** Migrated Marketplace home surfaces onto a unified browse API, deprecating the legacy query path, and corrected the metrics-measurement approach so homepage load was tracked accurately — LCP (P75) improved from 4.17s to 3.2s, page load (P95) from 20s to 8.3s. Also drove the Universal Search filter initiative — corpus, database, schema, and date filters — from requirements through production launch.
- **Mentorship:** Helped onboard four newer engineers during the early phase of their first projects, helping break down ambiguous, partially-designed scope into implementable work.
