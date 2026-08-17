-- SQLite-compatible schema
CREATE TABLE leads (
    lead_id TEXT PRIMARY KEY,
    lead_date DATE NOT NULL,
    origin TEXT NOT NULL,
    locadora TEXT NOT NULL,
    region TEXT NOT NULL,
    supervisor TEXT NOT NULL,
    sdr TEXT NOT NULL,
    order_date DATE,
    credit_analysis_date DATE,
    approved_date DATE,
    formalized_date DATE,
    signed_date DATE,
    stage TEXT NOT NULL,
    gmv REAL DEFAULT 0,
    amount_paid REAL DEFAULT 0,
    target_formalized INTEGER,
    target_signed INTEGER,
    is_order INTEGER,
    is_approved INTEGER,
    is_formalized INTEGER,
    is_signed INTEGER
);
