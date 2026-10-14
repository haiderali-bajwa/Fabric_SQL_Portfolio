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


<img width="1920" height="1080" alt="warehouse_setup" src="https://github.com/user-attachments/assets/699a620e-d401-4ea6-9acd-394d567bbe29" />



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
<img width="960" height="480" alt="pipline_success" src="https://github.com/user-attachments/assets/1f78606b-e16f-4845-967b-260fc464d8be" />

*   **Ingested Analytical Dataset Preview:**  
    <img width="955" height="450" alt="dataflow_preview" src="https://github.com/user-attachments/assets/ef0d98ec-b6f0-46b3-a56b-14e2a6f59d24" />

---

## 🛠️ Phase 2: Enterprise Data Pipeline & Orchestration Architecture

### 📋 Overview
To scale the cloud infrastructure, the raw transactional system was upgraded from manual triggers to an automated, decoupled **Data Factory Orchestration Pipeline** within Microsoft Fabric. This implementation enforces robust storage state control and structural dependencies to ensure idempotent data processing cycles.

### 🏗️ Pipeline Architecture Sequence
The data orchestration lifecycle executes sequentially across the following operational boundaries:
1. **State Purge (`Delete Old Files`):** Enforces a wildcard file path constraint (`Files/new_data/*.csv`) targeting the storage Lakehouse. It programmatically flushes stale historical partitions within **13 seconds** to prevent multi-ingestion schema divergence.
2. **Dependent Transformation Trigger (`Fabric_Dataflows_Pipeline`):** Conditioned entirely on the `On Success` evaluation trace of the purge stage. It automatically provisions compute resources to spin up the downstream Dataflow Gen2 engine, executing architectural calculations and layout casting within **50 seconds**.

### 📊 Orchestration Monitoring Execution Proof
The sequence runs entirely decoupled and automatically logs metadata runs upon manual or event-driven triggers. Below is the concrete architectural tracking trace of a successful sequential production execution:

<img width="959" height="507" alt="pipeline-success-monitoring" src="https://github.com/user-attachments/assets/899e4050-829b-42b5-8de6-c2ee025bbf25" />


    ---

## 🏗️ Phase 3: OneLake Data Virtualization & Multi-Cloud Short-cutting

### 📋 Overview
To eliminate redundant cloud replication layouts and optimize cross-organizational enterprise analytics, implemented **Data Virtualization** within Microsoft Fabric via OneLake Shortcuts. This decouples logical access bounds from physical storage constraints, enabling cross-system query execution with zero data movement or synchronization delays.

### ⚙️ Core Technical Implementation Details
* **Logical Connection Target:** Virtualized third-party upstream supplier states mapping internal and distributed directory topologies.
* **Object Mapping Reference:** Established pointer abstractions (`supplier_inventory`) bound securely under scoped, structural dataset boundaries.
* **Storage Footprint Assessment:** Verified workspace configuration layouts against metadata telemetry. The infrastructure maintained an absolute **0 MB incremental consumption rate**, validating metadata-only abstraction layer bindings.

### 📊 Real-Time Virtual Query Execution Proof
Below is the concrete runtime trace confirming immediate data availability, successful file schema ingestion, and direct relational structural rendering across the metadata link:

<img width="958" height="511" alt="onelake-shortcut-success" src="https://github.com/user-attachments/assets/bf98fefb-ba13-4c02-a088-d251f854fc09" />



* Demonstrated capability in scaling data access by isolating heavy analytics processing from transactional systems.
* Gained foundational experience utilizing unified metadata layers across multiple specialized software-as-a-service (SaaS) components.
