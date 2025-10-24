# batch-databricks-etl

Demonstrates batch ingestion, transformation, and curation with Databricks, Delta Lake, and MWAA orchestration.

## Repo Structure

```sh
batch-databricks-etl/
├── infrastructure/
│   ├── terraform/
│   │   ├── modules/
│   │   │   ├── databricks_workspace/
│   │   │   ├── mwaa/
│   │   │   ├── s3/
│   │   │   ├── iam/
│   │   │   └── redshift/
│   │   └── envs/
│   └── terragrunt/
│       ├── dev/
│       └── prod/
├── notebooks/
│   ├── ingest_sales.py
│   ├── transform_sales.py
│   └── load_to_redshift.py
├── dags/
│   ├── sales_etl_dag.py
│   └── common/
│       └── utils.py
├── src/
│   ├── utils/
│   │   └── s3_helper.py
│   └── monitoring/
│       └── airflow_metrics.py
├── config/
│   ├── databricks_config.json
│   └── airflow_connections.env
├── tests/
│   ├── test_databricks_notebooks.py
│   └── test_airflow_dag_integrity.py
├── ci-cd/
│   ├── github-actions.yaml
│   └── deploy-notebooks.yml
├── docs/
│   ├── architecture.png
│   ├── setup_guide.md
│   └── troubleshooting.md
└── README.md
```