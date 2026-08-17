# Power BI Build Guide

## 1. Import
Import `data/leads_synthetic.csv` into Power BI.

## 2. Data types
- Date columns: Date
- GMV / Valor Pago: Decimal number
- Flags and targets: Whole number
- IDs and dimensions: Text

## 3. Recommended model
For this portfolio version, a single fact table is enough to demonstrate the analysis.
For a production-grade version, split dimensions into:
- DimDate
- DimOrigin
- DimLocadora
- DimSDR
- DimRegion

## 4. Suggested dashboard layout

### Top
Slicers:
- Date
- Origin
- Locadora
- Region
- Supervisor

### KPI cards
- Leads
- Pedidos
- Aprovados
- Formalizados
- Assinados
- GMV

### Main analysis
1. Funnel by Origin
2. Daily conversions
3. Performance by Locadora
4. GMV by Locadora
5. SDR performance table

### Bottom
A detailed SDR table with:
- SDR
- Leads
- Conversion %
- Formalizados
- Assinados
- GMV

## 5. Design principle
Keep the dashboard focused on decisions:
- Where are leads being lost?
- Which origin converts best?
- Which partner has better performance?
- Which SDRs are driving signed volume?
- Are formalized and signed volumes tracking targets?
