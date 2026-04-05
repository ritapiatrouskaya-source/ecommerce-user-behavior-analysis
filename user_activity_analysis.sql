-- =========================================
-- Project: E-commerce User Behavior Analysis
-- Author: Marharyta Piatrouskaya
-- Description:
-- Analysis of user activity and conversion rate by hour
-- =========================================

-- 1. Total number of unique users

Select Count (Distinct user_id) FROM events;

-- 2. Total number of purchases

Select Count (*) From events Where event_type="purchase";

-- 3. Active users by hour 

SELECT 
    CAST(strftime('%H', REPLACE(event_time, ' UTC', '')) AS INTEGER) AS hour,
    COUNT(DISTINCT user_id) AS active_users
FROM events
GROUP BY hour
ORDER BY hour;

-- 4. Purchases by hour 

SELECT 
    CAST(strftime('%H', REPLACE(event_time, ' UTC', '')) AS INTEGER) AS hour,
    COUNT(*) AS purchases
FROM events
WHERE event_type = 'purchase'
GROUP BY hour
ORDER BY hour;

-- 5. Conversion rate by hour (purchase / view)

SELECT 
    CAST(strftime('%H', REPLACE(event_time, ' UTC', '')) AS INTEGER) AS hour,

   ROUND( (
        COUNT(DISTINCT CASE 
            WHEN event_type = 'purchase' THEN user_id
        END) *1.0
    )
    /
    (
        COUNT(DISTINCT CASE 
            WHEN event_type = 'view' THEN user_id
        END)
    ) *100, 2) AS conversion_rate
FROM events
GROUP BY hour
ORDER BY hour;

-- =========================================
-- Key Insight:
-- Most users are active between 07:00 and 19:00.
-- Conversion rate is relatively stable during peak hours.
--
-- Recommendation:
-- Focus marketing efforts during peak hours to increase conversions.
-- =========================================