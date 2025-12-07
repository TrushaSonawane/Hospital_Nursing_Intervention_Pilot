# 🏥 Hospital Nursing Intervention Pilot Program Analysis

This repository contains the data analysis and recommendation for identifying optimal hospitals for a pilot program focused on increasing nurse staffing in **Intensive Care Unit (ICU)** and **Surgical Intensive Care Unit (SICU)** units.

## Project Goal
To identify hospitals with the highest operational demand (Staffed Beds) and structural capacity (Licensed Beds) for ICU and SICU units to ensure the nurse staffing intervention yields the maximum impact.

## Data Schema (Star Schema)
The analysis utilizes a star schema composed of one fact table and two dimension tables:

* **`bed_fact` (Fact Table):** Contains quantitative measures like `license_beds`, `census_beds`, and `staffed_beds`.
* **`business` (Dimension Table):** Contains hospital descriptive information, such as `business_name`.
* **`bed_type` (Dimension Table):** Contains bed category descriptions (`bed_desc`).

## Analysis Steps & Files
| Step | Description | File(s) |
| :--- | :--- | :--- |
| **Data Setup** | Initial exploration of tables. | `Hospital_Nursing_Intervention_Pilot.sql` |
| **Analysis (ICU OR SICU)** | Find top hospitals based on Licensed and Staffed beds for *either* ICU or SICU (Bed IDs 4 and 15). | `Hospital_Nursing_Intervention_Pilotsql` |
| **Analysis (ICU AND SICU)** | Find top hospitals based on Licensed and Staffed beds for hospitals with *both* ICU and SICU units. | `Hospital_Nursing_Intervention_Pilot.sql` |
| **Results & Recommendation** | Interpretation of findings and the final selection of pilot hospitals. | `Hospital_Nursing_Intervention_Pilot.docx` |

## Key Recommendation
The analysis identified the following hospitals as the top candidates for the pilot program due to their consistently high counts in both **Licensed Beds** and **Staffed Beds** for combined ICU and SICU units:

* **University of Maryland Medical Center**
* **Shands Hospital at the University of Florida**

---

## How to Run the Analysis
The SQL queries are designed to be run on a database containing the three tables defined in the schema.

1.  **Clone the Repository:**
    ```bash
    git clone [https://github.com/YourUsername/Hospital_Nursing_Intervention_Pilot.git](https://github.com/YourUsername/Hospital_Nursing_Intervention_Pilot.git)
    ```
2.  **Load Data:** Load the `bed_fact`, `business`, and `bed_type` tables into your SQL environment (e.g., MySQL, PostgreSQL).
3.  **Execute Script:** Run the queries in the `sql/Trusha_Sonawane_Assignment_2.sql` file.
