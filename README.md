# batch-databricks-etl

A production-ready batch ETL pipeline using Databricks, Delta Lake, and Unity Catalog with medallion architecture (bronze/silver/gold), infrastructure built via Terraform/Terragrunt with comprehensive CI/CD and data quality checks.

## Repo Structure

```sh
batch-databricks-etl/
├── infrastructure/
│   ├── terragrunt/
│   │   ├── terragrunt.hcl
│   │   └── dev/
│   │       ├── terragrunt.hcl
│   │       └── env.hcl
│   └── terraform/
│       ├── main.tf
│       ├── variables.tf
│       ├── outputs.tf
│       ├── s3.tf
│       ├── iam.tf
│       ├── databricks.tf
│       ├── databricks_cluster.tf
│       ├── databricks_unity_catalog.tf 
│       ├── databricks_secrets.tf
│       ├── databricks_jobs.tf
│       └── cloudwatch.tf
├── databricks/
│   └── notebooks/
│       ├── 01_bronze_ingestion.py
│       ├── 02_silver_transform.py
│       ├── 03_gold_aggregation.py
│       └── 04_data_quality.py
├── src/
│   └── pyspark/
│       ├── transformations.py
│       └── data_quality.py
├── scripts/
│   ├── deploy_notebooks.sh
│   ├── create_sample_data.sh
│   ├── run_job.sh
│   ├── query_gold_tables.sh
│   ├── setup_unity_catalog.sh    
│   └── optimise_delta_tables.sh
├── tests/
│   ├── unit/
│   │   └── test_transformations.py
│   └── integration/
│       └── test_end_to_end.py
├── config/
│   ├── dev.yaml
│   └── prod.yaml
├── .github/
│   └── workflows/
│       └── ci-cd.yaml
├── docs/
│   ├── architecture.md
│   ├── databricks_setup_guide.md
│   └── next_steps.md
├── .gitignore
├── requirements.txt
└── README.md
```