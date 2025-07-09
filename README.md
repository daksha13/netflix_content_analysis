# 📺 Netflix Content Trends Analysis

This portfolio project explores Netflix's global content trends using **Python**, **SQL**, and **Tableau**. The goal is to uncover patterns in the platform's content library—from genre preferences and country origins to yearly additions and top creators.

It is designed to demonstrate a complete **data analysis lifecycle**: data cleaning, transformation, relational modeling, statistical exploration, and dashboard presentation.

---

## 🌎 Project Overview

### ✅ Objectives

- Analyze how Netflix's content library has evolved over time
- Understand the split between Movies and TV Shows
- Explore country-wise and genre-wise distribution of titles
- Identify top contributing directors
- Visualize content ratings by type

### ⚙ Tools & Technologies Used

- **Python** (Pandas, Seaborn, Matplotlib)
- **MySQL** (Workbench)
- **Tableau** (for dashboarding and storytelling)
- **Jupyter Notebook** (for EDA and wrangling)

---

## 📚 Dataset

- **File:** [`netflix_titles.csv`](.notebooks/netflix_titles.csv)
- **Source:** Kaggle Netflix Titles dataset
- **Fields Include:**
  - `title`, `type`, `director`, `cast`, `country`
  - `date_added`, `release_year`, `rating`, `duration`
  - `listed_in` (genre tags)

This dataset captures Netflix’s available content as of 2021, including metadata for thousands of TV shows and movies.

---

## 🛠️ Data Preparation & Cleaning (Python)

Notebook: [`cleaning_normalizing_analysis.ipynb`](./cleaning_normalizing_analysis.ipynb)

### Key Cleaning Steps:

- Converted `date_added` to datetime and extracted `year_added`
- Normalized `country`, `listed_in`, and `cast` into **separate rows** using `.str.split()` and `.explode()`
- Removed rows with missing or null values in critical fields
- Extracted numerical values from `duration` field for quantitative analysis
- Created normalized tables for `genres`, `countries`, and `titles`

---

## 📈 SQL Analysis

### Scripts:

- [`creating_tables.sql`](./creating_tables.sql): Table creation for titles, countries, genres
- [`sql_queries.sql`](./sql_queries.sql): Analysis queries on cleaned data

### Key SQL Analyses:

#### 1. Titles Added Per Year

```sql
SELECT release_year, COUNT(*) AS total_titles
FROM titles
GROUP BY release_year
ORDER BY release_year;
```

#### 2. Top 10 Countries by Content Count

```sql
SELECT country, COUNT(*) AS total
FROM countries
GROUP BY country
ORDER BY total DESC
LIMIT 10;
```

#### 3. Most Popular Genres

```sql
SELECT genre, COUNT(*) AS total
FROM genres
GROUP BY genre
ORDER BY total DESC
LIMIT 10;
```

#### 4. Top Directors on Netflix

```sql
SELECT director, COUNT(*) AS total
FROM titles
WHERE director IS NOT NULL
GROUP BY director
ORDER BY total DESC
LIMIT 10;
```

#### 5. Content Ratings by Type

```sql
SELECT rating, type, COUNT(*) AS count
FROM titles
GROUP BY rating, type
ORDER BY count DESC;
```

---

## 📊 Python Exploratory Data Analysis

All visuals and analysis logic are inside [`cleaning_normalizing_analysis.ipynb`](./cleaning_normalizing_analysis.ipynb).

### Visual Highlights:

#### 🕰️ Titles Added Per Year



#### 🌍 Top 10 Content Producing Countries



#### 🎥 Rating Distribution by Type



#### 👨‍🎬 Top 10 Directors



#### 🎞️ Content Type Comparison (2021)



---

## 🗺️ Tableau Dashboard

Tableau file: [`Book1.twb`](./Book1.twb)

Published link: *Add your Tableau Public link here*

### Dashboard Features:

- Interactive **map** showing titles by country
- **Line chart** of content growth over time
- Filters for **year**, **type**, and **genre**
- KPI cards for total titles, top genres, top contributors

---

## 📊 Key Insights

- Netflix saw **major growth in content** after 2015, especially in 2019–2020
- **Movies dominate** Netflix's catalog, but TV shows are consistently growing
- **US, India, UK** are the top 3 countries by content volume
- **TV-MA** and **TV-14** are the most common ratings, aligning with adult/teen content
- **Rajiv Chilaka** and **Jan Suter** top the list of most featured directors

---

## 🎓 About the Author

**Daksha Verma**\
Aspiring Data Analyst passionate about storytelling with data.\
Experienced in Python, SQL, and BI tools.

- [LinkedIn Profile](#)
- [Tableau Public](#)
- [GitHub Portfolio](#)

---

## 💼 License

This project is licensed under the MIT License — feel free to use, fork, and adapt!

