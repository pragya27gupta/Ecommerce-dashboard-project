# Revenue Analysis Summary

## Objective
Analyze revenue trends over time to understand business growth, seasonality, and performance patterns.

---

# Business Question
How has revenue changed over time, and are there visible growth or seasonal trends?

---

# SQL Query

```sql
SELECT 
    LEFT(o.order_purchase_timestamp, 7) AS order_month,
    ROUND(SUM(oi.price), 2) AS monthly_revenue
FROM olist_orders_dataset o
JOIN olist_order_items_dataset oi
    ON o.order_id = oi.order_id
WHERE o.order_status = 'delivered'
GROUP BY LEFT(o.order_purchase_timestamp, 7)
ORDER BY order_month;
```

---

# Key Insights

## Strong Revenue Growth in 2017
Revenue grew significantly throughout 2017, indicating rapid business expansion.

- Jan 2017 Revenue: 111,798
- Nov 2017 Revenue: 987,765

Approximate growth: ~8.8x

---

## Peak Revenue in November 2017
The highest monthly revenue was observed in November 2017.

- Peak Revenue: 987,765

This likely indicates seasonal demand or promotional event impact.

---

## Revenue Stabilization in 2018
Revenue remained consistently high throughout 2018.

Average monthly revenue remained between 826K–977K.

This suggests the business transitioned from rapid growth to a more stable operating phase.

---

## Slight Revenue Decline After May 2018
A small decline was observed after May 2018.

Further analysis is required to determine whether this was driven by:
- lower order volume
- seasonality
- lower average order value
