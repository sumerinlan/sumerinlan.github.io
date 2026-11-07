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

I joined the Marketplace team in 2021. I built marketplace features first, then search features. In February 2025 I was promoted to Senior Software Engineer. I then moved to Search and Discovery, and later to Marketplace AI Products. I owned the frontend on three major initiatives.

## AI Sharing: Semantic Views, Agents & Skills {#ai-sharing}

**Role:** Sole Frontend DRI / Feature Lead (POC), Marketplace AI Products team, 2025 – present

As customers built AI on Snowflake, they needed to share more than tables. They shared semantic views and agents with other accounts through listings, and skills with teammates in their own account.

- **Snowflake Cortex AI Products Sharing (2025 – present):** I built shared frontend patterns for sharing AI capabilities and semantic objects, on both the provider and the consumer side. They include grant-select-on-share in listing creation, and a share detail page where providers see what a share holds. I used these patterns for semantic view sharing, agent sharing (from agent creation through launch) and AI-ready listings.
- **Skill Catalog (2026 – present):** As frontend owner, I defined the Skill Catalog workflows with PM before design started. I built the browse and governance UI, from public preview through GA. It covers security scan review and override, delegated administration, certification, versioning, and owner settings for discoverability and categories. My scope then grew from Snowsight to the catalog in Cortex Code. I planned that work with the CLI and desktop teams, and built in-chat skill recommendations.

## Horizon Catalog: Discovery & Navigation {#horizon-catalog}

**Role:** Frontend point of contact (POC), Marketplace, then Search and Discovery, 2024 – 2025

My scope grew in three steps. I started on specific discoverability and access-control flows. Then I became the frontend point of contact for catalog features. Last, I owned a navigation overhaul used across Horizon Catalog.

- **Access & Discoverability (2024 – 2025):** Some objects show up in Universal Search but are not accessible. I built UI flows in the search result cards that tell apart in-account contact info from external ways to get access. I was the frontend point of contact for Contacts. I built the flows to create contacts, grant privileges and assign contacts, and adapted them as scope grew and timelines moved up.
- **Navigation (2025):** I refactored Horizon Catalog navigation: flyover menus, pinning and onboarding flows. I owned a multi-phase A/B test of the left navigation through GA, and built a reusable in-product survey mechanism.

## Marketplace: Listings & Discovery {#marketplace}

**Role:** Software Engineer, Marketplace team, 2021 – early 2025

Over four years my scope grew steadily. I started inside established provider-publishing patterns. Then I owned core features tied to revenue and compliance: auto-fulfillment, private listings and the data dictionary. As traffic grew, I drove performance work and search at scale.

- **Foundations (2021):** In my first quarter, I built the revamp of the provider publishing UI across the listing-creation screens, and the first end-to-end test suite. I built region-agnostic deep links, so an external listing URL opens the right Marketplace page. I also added buttons that copy a shareable URL, so providers can hand out links.
- **Growing ownership (2021 – 2022):** On Listing Auto-Fulfillment, I went from early contributor to engineering point of contact for its later phase. I adapted the provider UI as the API under it changed. In the same period I took on Private Listings. I did the technical design and built the provider and consumer detail pages, from preview through launch.
- **Data Dictionary (2023):** I led Data Dictionary from preview through GA, and the improvements after GA: search, inline edit and telemetry. I built it into private-listing publishing and into the provider and consumer preview flows.
- **Scale & performance (2023 – 2024):** I moved the Marketplace home pages onto a unified browse API and retired the old query path. I also fixed how we measured homepage load, so the numbers were accurate. LCP (P75) went from 4.17s to 3.2s, and page load (P95) from 20s to 8.3s. I drove the Universal Search filters (corpus, database, schema and date) from requirements through production launch.
- **Mentorship:** I helped four newer engineers start their first projects. I helped them break unclear, partly designed scope into work they could build.
