# Bank Marketing SQL Analysis — Queries & Results

Dataset: `bank.csv` (11,162 rows)

---

### Query 1: Total number of customers
```sql
SELECT COUNT(*) AS total_customers
FROM bank;
```
**Result:** 11,162

---

### Query 2: Customers who said yes
```sql
SELECT COUNT(*) AS subscribed
FROM bank
WHERE deposit = 'yes';
```
**Result:** 5,289

---

### Query 3: Customers who said no
```sql
SELECT COUNT(*) AS not_subscribed
FROM bank
WHERE deposit = 'no';
```
**Result:** 5,873

---

### Query 4: Total customers by job
```sql
SELECT job, COUNT(*) AS total_customers
FROM bank
GROUP BY job;
```
| job | total_customers |
|---|---|
| admin. | 1334 |
| blue-collar | 1944 |
| entrepreneur | 328 |
| housemaid | 274 |
| management | 2566 |
| retired | 778 |
| self-employed | 405 |
| services | 923 |
| student | 360 |
| technician | 1823 |
| unemployed | 357 |
| unknown | 70 |

---

### Query 5: Customers who said yes, by job
```sql
SELECT job, COUNT(*) AS yes_count
FROM bank
WHERE deposit = 'yes'
GROUP BY job;
```
| job | yes_count |
|---|---|
| admin. | 631 |
| blue-collar | 708 |
| entrepreneur | 123 |
| housemaid | 109 |
| management | 1301 |
| retired | 516 |
| self-employed | 187 |
| services | 369 |
| student | 269 |
| technician | 840 |
| unemployed | 202 |
| unknown | 34 |

---

### Query 6: Average balance by deposit
```sql
SELECT deposit, AVG(balance) AS average_balance
FROM bank
GROUP BY deposit;
```
| deposit | average_balance |
|---|---|
| no | 1280.23 |
| yes | 1804.27 |

---

### Query 7: Average call duration by deposit
```sql
SELECT deposit, AVG(duration) AS average_duration
FROM bank
GROUP BY deposit;
```
| deposit | average_duration |
|---|---|
| no | 223.13 |
| yes | 537.29 |

---

### Query 8: Total customers by month
```sql
SELECT month, COUNT(*) AS total_customers
FROM bank
GROUP BY month
ORDER BY total_customers DESC;
```
| month | total_customers |
|---|---|
| may | 2824 |
| aug | 1519 |
| jul | 1514 |
| jun | 1222 |
| nov | 943 |
| apr | 923 |
| feb | 776 |
| oct | 392 |
| jan | 344 |
| sep | 319 |
| mar | 276 |
| dec | 110 |

---

### Query 9: Total customers by previous campaign outcome
```sql
SELECT poutcome, COUNT(*) AS total_customers
FROM bank
GROUP BY poutcome
ORDER BY total_customers DESC;
```
| poutcome | total_customers |
|---|---|
| unknown | 8326 |
| failure | 1228 |
| success | 1071 |
| other | 537 |

---

### Query 10: Customers who said yes, by previous campaign outcome
```sql
SELECT poutcome, COUNT(*) AS yes_count
FROM bank
WHERE deposit = 'yes'
GROUP BY poutcome;
```
| poutcome | yes_count |
|---|---|
| failure | 618 |
| other | 307 |
| success | 978 |
| unknown | 3386 |

---

### Query 11: Customers who said yes, by housing loan
```sql
SELECT housing, COUNT(*) AS yes_count
FROM bank
WHERE deposit = 'yes'
GROUP BY housing;
```
| housing | yes_count |
|---|---|
| no | 3354 |
| yes | 1935 |

---

### Query 12: Total customers by education
```sql
SELECT education, COUNT(*) AS total_customers
FROM bank
GROUP BY education;
```
| education | total_customers |
|---|---|
| primary | 1500 |
| secondary | 5476 |
| tertiary | 3689 |
| unknown | 497 |

---

### Query 13: Customers who said yes, by education
```sql
SELECT education, COUNT(*) AS yes_count
FROM bank
WHERE deposit = 'yes'
GROUP BY education;
```
| education | yes_count |
|---|---|
| primary | 591 |
| secondary | 2450 |
| tertiary | 1996 |
| unknown | 252 |

---

### Query 14: Total customers by marital status
```sql
SELECT marital, COUNT(*) AS total_customers
FROM bank
GROUP BY marital;
```
| marital | total_customers |
|---|---|
| divorced | 1293 |
| married | 6351 |
| single | 3518 |

---

### Query 15: Customers who said yes, by marital status
```sql
SELECT marital, COUNT(*) AS total_customer
FROM bank
WHERE deposit = 'yes'
GROUP BY marital;
```
| marital | total_customer |
|---|---|
| divorced | 622 |
| married | 2755 |
| single | 1912 |

---

### Query 16: Customers who said yes, by personal loan
```sql
SELECT loan, COUNT(*) AS total_customers
FROM bank
WHERE deposit = 'yes'
GROUP BY loan;
```
| loan | total_customers |
|---|---|
| no | 4805 |
| yes | 484 |

---

### Query 17: Average age by deposit
```sql
SELECT deposit, AVG(age) AS average_age
FROM bank
GROUP BY deposit;
```
| deposit | average_age |
|---|---|
| no | 40.84 |
| yes | 41.67 |

---

### Query 18: Top 10 customers by balance
```sql
SELECT TOP 10 age, job, balance, deposit
FROM bank
ORDER BY balance DESC;
```
| age | job | balance | deposit |
|---|---|---|---|
| 84 | retired | 81204 | yes |
| 84 | retired | 81204 | yes |
| 52 | blue-collar | 66653 | no |
| 43 | admin. | 56831 | no |
| 61 | self-employed | 52587 | yes |
| 61 | self-employed | 52587 | yes |
| 56 | entrepreneur | 51439 | no |
| 39 | technician | 45248 | yes |
| 75 | retired | 37127 | no |
| 51 | entrepreneur | 36935 | no |

---

### Query 19: Number of customers under age 30
```sql
SELECT COUNT(*) AS young_customers
FROM bank
WHERE age < 30;
```
**Result:** 1,551

---

### Query 20: Youngest customer
```sql
SELECT TOP 1 age, job, marital, deposit
FROM bank
ORDER BY age ASC;
```
| age | job | marital | deposit |
|---|---|---|---|
| 18 | student | single | yes |
