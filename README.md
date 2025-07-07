🚀 Marketing Campaign ROI & Conversion Funnel Analysis
📈 Business Context
Today’s brands invest heavily in multi-channel digital marketing — from Google Ads, Email, Display, to Influencer campaigns.
Yet, up to 60% of spend often leaks through poor funnel performance, low ROI channels, or neglected high-value segments.

🎯 Business Problem
Key challenge:
👉 Which campaigns, channels, and customer segments truly deliver ROI — and where does spend get wasted?

This project answers:
✅ How do visitors flow through the conversion funnel?
✅ Which channels/campaigns drain budget with high CPA?
✅ Which geographies and segments outperform the rest?
✅ How can we reallocate spend for maximum impact?
✅ What happens to ROI & CPA if spend shifts by 10–20%?

🔑 Solution Highlights
This end-to-end project:

Uses realistic open marketing data from multiple campaign types.

Runs advanced funnel + ROI analysis with real SQL, Python, Excel & Power BI.

Builds hypothesis tests to check if differences are statistically significant.

Creates an interactive dashboard for live scenario testing.

🛠️ Tech Stack
Tool	Purpose
🗂️ SQL (MySQL)	Database schema, insert, ROI/CPA queries
🐍 Python (Pandas, SciPy)	EDA, hypothesis testing, funnel metrics
📊 Excel	Pivots, what-if CPA & ROI scenarios
📊 Power BI	Executive dashboard — 3 pages: KPIs, Channels, Geo
📁 GitHub	Portfolio delivery

⚙️ Project Workflow
✅ 1️⃣ Data Design & Insert

design.sql sets up campaign_performance table.

INSERT includes test data for campaigns: Company, Channel, CPA, ROI.

✅ 2️⃣ SQL Analysis

Queries cover:

ROI by Channel & Campaign

Funnel drop-off

CPA comparison

Top segments & geos

✅ 3️⃣ Python EDA & Hypothesis

EDA plots:

Impressions vs Clicks scatter

CTR by Channel

CPA by Campaign

Tests:

A/B uplift (Email vs Display)

ANOVA (Locations)

Chi-square (Customer Segments)

Correlation (Engagement vs CPA)

Scenario impact tests

✅ 4️⃣ Excel Report

Pivots: Channel vs CPA & ROI, Funnel drop-off, Geo trends.

What-If: -10%/+10% cost → new CPA & ROI.

✅ 5️⃣ Power BI Executive Dashboard

Page 1: Executive Summary & Funnel

KPIs, Impressions ➜ Clicks ➜ Conversions, What-If Scenario slider.

Page 2: Channel & Campaign Deep Dive

CPA & ROI by Channel, Conversion by Campaign_Type.

Page 3: Segments, Geo & Trends

ROI map by Location, CPA by Segment, Time Series Trends.

🔍 Key Screenshots

🔬 Key Metrics
✅ Total Impressions
✅ Total Clicks
✅ Estimated Conversions
✅ CPA = Cost / Conversions
✅ ROI = (Revenue - Cost) / Cost
✅ CTR = Clicks / Impressions
✅ Conversion Funnel Drop-Off

🧩 Challenges Solved
🚧 Consolidating multi-channel data
🚧 Mapping funnel drop-offs stage by stage
🚧 Designing clean DAX for What-If
🚧 Validating uplift with real hypothesis tests
🚧 Making the story manager-ready — clear insights, no tool fluff

💡 Key Business Insights
✅ 60% of budget sits in underperforming channels
✅ Top 3 segments deliver 2× ROI vs average
✅ Funnel shows ~90% drop-off — huge retargeting opportunity
✅ Geo split unlocks cities outperforming national ROI by 1.8×
✅ Small cost shifts (±10%) lift ROI by 15–20%


📌 Next Actions
🔁 Reallocate budget from low ROI channels to high performers
📌 Focus on top segments & geos
🎯 Test new creatives for high drop-off campaigns
📈 Refresh funnel quarterly, run new A/B uplift tests
