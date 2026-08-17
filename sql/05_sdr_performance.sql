-- SDR performance
SELECT
    sdr,
    COUNT(*) AS leads,
    SUM(is_order) AS orders,
    SUM(is_approved) AS approved,
    SUM(is_formalized) AS formalized,
    SUM(is_signed) AS signed,
    ROUND(100.0 * SUM(is_signed) / NULLIF(COUNT(*), 0), 2) AS conversion_pct,
    ROUND(SUM(gmv), 2) AS gmv
FROM leads
GROUP BY sdr
ORDER BY signed DESC, gmv DESC;
