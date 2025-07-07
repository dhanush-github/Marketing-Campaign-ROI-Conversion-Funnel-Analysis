-- Total Impressions, Clicks, CTR & Estimated Conversions by Campaign Type
SELECT
  Campaign_Type,
  SUM(Impressions) AS total_impressions,
  SUM(Clicks) AS total_clicks,
  ROUND(SUM(Clicks) / SUM(Impressions), 4) AS ctr,
  AVG(Conversion_Rate) AS avg_conversion_rate,
  ROUND(SUM(Impressions) * AVG(Conversion_Rate)) AS est_conversions
FROM
  campaign_performance
GROUP BY
  Campaign_Type;

-- CPA (Cost per Acquisition) by Channel -------------------------------------------------------------
SELECT
  Channel_Used,
  SUM(Acquisition_Cost) AS total_cost,
  ROUND(SUM(Impressions) * AVG(Conversion_Rate)) AS est_conversions,
  ROUND(SUM(Acquisition_Cost) / NULLIF(SUM(Impressions) * AVG(Conversion_Rate), 0), 2) AS cpa
FROM
  campaign_performance
GROUP BY
  Channel_Used;

-- Average ROI by Campaign Type  ----------------------------------------------------------------------------
SELECT
  Campaign_Type,
  AVG(ROI) AS avg_roi
FROM
  campaign_performance
GROUP BY
  Campaign_Type
ORDER BY
  avg_roi DESC;

--  CTR by Channel & Campaign Type ----------------------------------------------------------------------------
SELECT
  Channel_Used,
  Campaign_Type,
  SUM(Clicks) AS total_clicks,
  SUM(Impressions) AS total_impressions,
  ROUND(SUM(Clicks) / SUM(Impressions), 4) AS ctr
FROM
  campaign_performance
GROUP BY
  Channel_Used, Campaign_Type
ORDER BY
  ctr DESC;

-- Conversion Rate by Customer Segment  -----------------------------------------------------
SELECT
  Customer_Segment,
  AVG(Conversion_Rate) AS avg_conversion_rate,
  ROUND(SUM(Impressions) * AVG(Conversion_Rate)) AS est_conversions
FROM
  campaign_performance
GROUP BY
  Customer_Segment
ORDER BY
  avg_conversion_rate DESC;

-- Top Locations by ROI  ---------------------------------------------------------------------------------
SELECT
  Location,
  AVG(ROI) AS avg_roi,
  SUM(Acquisition_Cost) AS total_spend
FROM
  campaign_performance
GROUP BY
  Location
ORDER BY
  avg_roi DESC
LIMIT 10;

-- ROI & Conversion by Campaign Duration -----------------------------------------------------------------------
SELECT
  Duration,
  AVG(ROI) AS avg_roi,
  AVG(Conversion_Rate) AS avg_conversion_rate,
  ROUND(SUM(Impressions) * AVG(Conversion_Rate)) AS est_conversions
FROM
  campaign_performance
GROUP BY
  Duration
ORDER BY
  avg_roi DESC;

-- Conversion Rate by Language -----------------------------------------------------------------------------
SELECT
  Language,
  AVG(Conversion_Rate) AS avg_conversion_rate,
  AVG(ROI) AS avg_roi
FROM
  campaign_performance
GROUP BY
  Language
ORDER BY
  avg_conversion_rate DESC;

-- Daily Trends — Impressions, Clicks, Estimated Conversions  --------------------------------------------------------
SELECT
  Date,
  SUM(Impressions) AS total_impressions,
  SUM(Clicks) AS total_clicks,
  ROUND(SUM(Impressions) * AVG(Conversion_Rate)) AS est_conversions
FROM
  campaign_performance
GROUP BY
  Date
ORDER BY
  Date ASC;

--  Company-wise Spend & ROI  ----------------------------------------------------------------------------------------
SELECT
  Company,
  SUM(Acquisition_Cost) AS total_cost,
  AVG(ROI) AS avg_roi
FROM
  campaign_performance
GROUP BY
  Company
ORDER BY
  total_cost DESC;
