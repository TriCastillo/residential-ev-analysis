# EV Charging Station Analysis

As electric vehicles (EVs) become increasingly common, residential buildings are adapting by installing shared charging stations in their parking facilities. Managing these shared resources efficiently is crucial to meet the growing demand and ensure fair access for all residents. This repository presents a comprehensive analysis of EV charging session data from apartment buildings, focusing on usage patterns, peak demand periods, and user behaviors. By leveraging SQL and Python in a Jupyter Notebook environment, the project aims to provide actionable insights for building managers and stakeholders to optimize charging station utilization and improve the resident experience.

## Table of Contents

- [Scenario and Problem Statement](#scenario-and-problem-statement)
- [Dataset Description](#dataset-description)
- [Actions and Approach](#actions-and-approach)
- [Screenshots and Examples](#screenshots-and-examples)
- [Technologies Used](#technologies-used)
- [Project Structure](#project-structure)
- [Results and Insights](#results-and-insights)
- [Future Work](#future-work)
- [Acknowledgement](#acknowledgement)
- [Contact Information](#contact-information)

---

## Scenario and Problem Statement

As electric vehicles (EVs) become more popular, apartment buildings are retrofitting parking garages with shared charging stations. However, increased demand leads to competition for these ports. This project analyzes EV charging session data to help building managers understand tenants’ charging habits and optimize shared charging station usage.

---

## Dataset Description

The dataset is stored in a PostgreSQL table named `charging_sessions` with the following columns:

| Column              | Definition                                        | Data type |
| ------------------- | ------------------------------------------------- | --------- |
| `garage_id`         | Identifier for the garage/building                | VARCHAR   |
| `user_id`           | Identifier for the individual user                | VARCHAR   |
| `user_type`         | Indicates if the station is `Shared` or `Private` | VARCHAR   |
| `start_plugin`      | Date and time the session started                 | DATETIME  |
| `start_plugin_hour` | Hour (military time) the session started          | NUMERIC   |
| `end_plugout`       | Date and time the session ended                   | DATETIME  |
| `end_plugout_hour`  | Hour (military time) the session ended            | NUMERIC   |
| `duration_hours`    | Length of the session in hours                    | NUMERIC   |
| `el_kwh`            | Electricity used (kWh)                            | NUMERIC   |
| `month_plugin`      | Month the session started                         | VARCHAR   |
| `weekdays_plugin`   | Day of the week the session started               | VARCHAR   |

---

## Actions and Approach

1. **Count unique users per garage for shared stations.**
2. **Identify the top 10 most popular charging start times (by weekday and hour) for shared stations.**
3. **Find users whose average charging duration exceeds 10 hours on shared stations.**
4. **Summarize findings and visualize results.**

All queries and analysis are performed in [notebook.ipynb](notebooks/notebook.ipynb).

---

## Screenshots and Examples

### Example: Unique Users per Garage

| garage_id | num_unique_users |
| --------- | ---------------- |
| Bl2       | 18               |
| AsO2      | 17               |
| UT9       | 16               |

### Example: Most Popular Shared Start Times

| weekdays_plugin | start_plugin_hour | num_charging_sessions |
| --------------- | ----------------- | --------------------- |
| Sunday          | 17                | 30                    |
| Friday          | 15                | 28                    |

### Example: Long Duration Shared Users

| user_id  | avg_charging_duration |
| -------- | --------------------- |
| Share-9  | 16.85                 |
| Share-17 | 12.89                 |

![EV Charging](images/charging_station.jpg)

---

## Technologies Used

- PostgreSQL
- SQL
- Jupyter Notebook ([notebook.ipynb](notebooks/notebook.ipynb))
- Markdown

---

## Project Structure

- **data/**
  - charging_sessions.csv
- **images/**
  - charging_station.jpg
- **notebooks/**
  - notebook.ipynb
- **queries/**
  - long_duration_shared_users.sql
  - most_popular_shared_start_times.sql
  - unique_users_per_garage.sql
- README.md

---

## Results and Insights

- Some garages have significantly more unique users, indicating higher demand.
- Peak charging times are concentrated on certain weekdays and hours (e.g., Sunday 17:00).
- A small group of users have average charging durations exceeding 10 hours, potentially indicating inefficient usage or need for policy adjustment.

---

## Future Work

- Analyze private charging station usage for comparison.
- Predict future demand using time series analysis.
- Recommend optimal scheduling or reservation systems.
- Visualize trends with interactive dashboards.

---

## Acknowledgement

- Problem statements and/or datasets in this project were sourced from [DataCamp](https://www.datacamp.com/) real-world projects.

---

## Contact Information

For questions or collaboration opportunities, please contact:

- **Email:** reynaldoiii.castillo@gmail.com
- **LinkedIn:** Reynaldo III Castillo | [LinkedIn](https://www.linkedin.com/in/reynaldo-iii-castillo-975120303)

---
