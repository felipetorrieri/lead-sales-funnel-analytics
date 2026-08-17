-- Funnel summary by lead origin
SELECT
    origin,
    COUNT(*) AS leads,
    SUM(is_order) AS orders,
    SUM(is_approved) AS approved,
    SUM(is_formalized) AS formalized,
    SUM(is_signed) AS signed,
    ROUND(100.0 * SUM(is_order) / COUNT(*), 2) AS lead_to_order_pct,
    ROUND(100.0 * SUM(is_approved) / NULLIF(SUM(is_order), 0), 2) AS order_to_approved_pct,
    ROUND(100.0 * SUM(is_formalized) / NULLIF(SUM(is_approved), 0), 2) AS approved_to_formalized_pct,
    ROUND(100.0 * SUM(is_signed) / NULLIF(SUM(is_formalized), 0), 2) AS formalized_to_signed_pct
FROM leads
GROUP BY origin
ORDER BY leads DESC;
