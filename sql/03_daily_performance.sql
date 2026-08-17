-- Daily performance
SELECT
    lead_date,
    COUNT(*) AS leads,
    SUM(is_order) AS orders,
    SUM(is_approved) AS approved,
    SUM(is_formalized) AS formalized,
    SUM(is_signed) AS signed,
    ROUND(100.0 * SUM(is_signed) / NULLIF(COUNT(*), 0), 2) AS overall_conversion_pct
FROM leads
GROUP BY lead_date
ORDER BY lead_date;
