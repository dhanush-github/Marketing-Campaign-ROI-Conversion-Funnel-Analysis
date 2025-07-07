CREATE DATABASE IF NOT EXISTS marketing_ab;

USE marketing_ab;

CREATE TABLE IF NOT EXISTS campaign_performance (
	campaign_ID INT PRIMARY KEY,
    Company VARCHAR(255),
    Campaign_Type VARCHAR(100),
    Target_Audience VARCHAR(100),
    Duration VARCHAR(50),
    Channel_Used VARCHAR(100),
    Conversion_Rate DECIMAL(5,4),
    Acquisition_Cost DECIMAL(15,2),
    ROI DECIMAL(10,2),
    Location VARCHAR(100),
    Language VARCHAR(50),
    Clicks INT,
    Impressions INT,
    Engagement_Score INT,
    Customer_Segment VARCHAR(100),
    Date DATE
);

-- SELECT * FROM campaign_performance;


-- Inserting Data(Values) in our table

INSERT INTO campaign_performance 
(campaign_ID, Company, Campaign_Type, Target_Audience, Duration, Channel_Used,
 Conversion_Rate, Acquisition_Cost, ROI, Location, Language, Clicks, Impressions,
 Engagement_Score, Customer_Segment, Date)
VALUES
(1, 'Innovate Industries', 'Email', 'Men 18-24', '30 days', 'Google Ads', 0.04, 16174.00, 6.29, 'Chicago', 'Spanish', 506, 1922, 6, 'Health & Wellness', '2021-01-01'),
(2, 'NexGen Systems', 'Email', 'Women 35-44', '60 days', 'Google Ads', 0.12, 11566.00, 5.61, 'New York', 'German', 116, 7523, 7, 'Fashionistas', '2021-01-02'),
(3, 'Alpha Innovations', 'Influencer', 'Men 25-34', '30 days', 'YouTube', 0.07, 10200.00, 7.18, 'Los Angeles', 'French', 584, 7698, 1, 'Outdoor Adventurers', '2021-01-03'),
(4, 'DataTech Solutions', 'Display', 'All Ages', '60 days', 'YouTube', 0.11, 12724.00, 5.55, 'Miami', 'Mandarin', 217, 1820, 7, 'Health & Wellness', '2021-01-04'),
(5, 'NexGen Systems', 'Email', 'Men 25-34', '15 days', 'YouTube', 0.05, 16452.00, 6.50, 'Los Angeles', 'Mandarin', 379, 4201, 3, 'Health & Wellness', '2021-01-05');


