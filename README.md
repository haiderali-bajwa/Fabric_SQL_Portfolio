# End-to-End Analytics with Microsoft Fabric

This repository showcases my hands-on data engineering experience building multi-experience data analytics solutions within the **Microsoft Fabric SaaS ecosystem**. The project demonstrates how to ingest, manage, and analyze structured datasets using both relational warehouse and lakehouse open-format setups.

## 🏗️ Architecture & Microsoft Fabric Experiences

### 1. Data Warehouse Experience (`/Fabric-Warehouse-Experience`)
* **T-SQL Modeling:** Developed optimized relational database schemas directly within the Fabric Warehouse compute engine.
* **SQL Aggregations:** Wrote analytical scripts to handle dimensional filtering, records validation, and automated business reporting constraints.
* **Database Views:** Created virtual summary tables (`sales.customers_by_region`) to speed up business intelligence queries.

### 2. Lakehouse Experience (`/Fabric-Lakehouse-Experience`)
* **SQL Analytics Endpoint:** Queried delta lake format tables using Fabric's multi-engine analytical framework.
* **Unified Storage:** Leveraged unified data access patterns over open tables without maintaining heavy extract-transform-load (ETL) pipelines.

---

## 📸 System Walkthrough & Screenshots

Here is a visual validation of the active analytical configurations inside the Microsoft Fabric environment:

### Relational Schema & Data Warehouse Queries
Below is the execution layer where core relational tables and summary aggregation views are successfully built:

![Fabric Warehouse Execution Layer](images/warehouse_setup.png)

---

## 🛠️ Key Takeaways & Fabric Competencies
* Handled the physical split between structured storage tables and business reporting layers.


---

## 3. Automated Data Ingestion Pipeline (Fabric-Dataflow-Experience)

*   **Dataflow Gen2 Ingestion:** Configured cloud extractor maps targeting low-latency flat-file transformations built using Power Query Online.
*   **Feature Engineering (M Language):** Authored deterministic, case-sensitive functional expressions inside the advanced editor to isolate calendar parameters from live transaction streams:
    ```powerquery
    Date.Month([OrderDate])
    ```
*   **Delta Storage Mapping:** Routed transformed destination outputs straight into a **Fabric Lakehouse Delta Table** utilizing efficient append-only synchronization profiles.
*   **Workflow Orchestration:** Packaged internal queries within a structured **Fabric Data Pipeline** topology to achieve fully automated runtime refreshes, zero-intervention scheduling, and green success tracking checkmarks.

### Data Ingestion Workflow & Validation Logs
Below is the verification evidence proving end-to-end execution success:

*   **Verified Pipeline Orchestration Run Status (Succeeded):**  
    ![Pipeline Status Verification Success](./images/pipeline_success.png)

*   **Ingested Analytical Dataset Preview:**  
    ![Dataflow Processing and Preview](./images/dataflow_preview.png)
* Demonstrated capability in scaling data access by isolating heavy analytics processing from transactional systems.
* Gained foundational experience utilizing unified metadata layers across multiple specialized software-as-a-service (SaaS) components.
