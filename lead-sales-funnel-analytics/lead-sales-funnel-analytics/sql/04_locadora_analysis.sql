-- Approval and signed performance by rental partner
SELECT
    locadora,
    SUM(is_approved) AS approved,
    SUM(is_formalized) AS formalized,
    SUM(is_signed) AS signed,
    ROUND(SUM(gmv), 2) AS gmv,
    ROUND(100.0 * SUM(is_signed) / NULLIF(SUM(is_approved), 0), 2) AS approval_to_signed_pct
FROM leads
GROUP BY locadora
ORDER BY signed DESC;
