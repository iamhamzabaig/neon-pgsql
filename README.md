<div align="center">

# 🐘 neon-pgsql

### PostgreSQL learning playground

SQL practice scripts run against the **dvdrental** sample database on [Neon](https://neon.tech) Postgres.

<br>

![PostgreSQL](https://img.shields.io/badge/PostgreSQL-4169E1?style=for-the-badge&logo=postgresql&logoColor=white)
![Neon](https://img.shields.io/badge/Neon-00E599?style=for-the-badge&logo=postgresql&logoColor=black)
![SQL](https://img.shields.io/badge/SQL-CC2927?style=for-the-badge&logo=sqlite&logoColor=white)

</div>

---

## 📚 Contents

| File | Topics covered |
|------|----------------|
| 🔍 `select-statement.sql` | `SELECT` · column aliases · string concat (`\|\|`) |
| 🔃 `order-by.sql` | `ORDER BY` · `ASC` / `DESC` · sort by expression (`LENGTH`) |
| 🧹 `filtering.sql` | `DISTINCT` · `DISTINCT ON` · `AND` · `IN` / `NOT IN` · `<>` · `BETWEEN` · DDL + inserts |
| 🏷️ `table-aliases.sql` | Table aliases (`AS`) in `SELECT`, `JOIN`, and self-join |
| 🔗 `inner-join.sql` | `INNER JOIN` across two and three tables (`customer` · `payment` · `staff`) |
| ↖️ `left-join.sql` | `LEFT JOIN` · `USING` clause · `IS NOT NULL` filter (`film` · `inventory`) |
| 🔁 `self-join.sql` | Self-join via `manager_id` self-reference · `FOREIGN KEY` · `ON DELETE CASCADE` |
| 🤝 `join-tables.sql` | `INNER` / `LEFT` / `RIGHT` / `FULL OUTER` joins · anti-joins · `teams` + `players` schema |
| 📦 `dvdrental.tar` | Sample database dump (restore target) |

---

## 🚀 Setup

<details open>
<summary><b>Restore the sample database</b></summary>

<br>

**Local Postgres**

```bash
pg_restore -U <user> -d dvdrental dvdrental.tar
```

**Neon (connection string)**

```bash
pg_restore -d "postgresql://<user>:<pass>@<host>/dvdrental" dvdrental.tar
```

</details>

---

## ▶️ Usage

Run any script with `psql`:

```bash
psql -d dvdrental -f select-statement.sql
```

> 💡 **Tip:** Open a script in your editor and run statements one at a time to see each concept in action.

---

<div align="center">

🐘 Built while learning PostgreSQL · powered by Neon

</div>
