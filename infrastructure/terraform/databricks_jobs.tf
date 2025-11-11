Upload notebooks to Databricks workspace:
    Use databricks_notebook resource
    Source from local files
    Path: /Workspace/notebooks/
Create Databricks job:
    name: ${name_prefix}-etl-job
    max_concurrent_runs from variable
    timeout_seconds from variable
Define task 1: Bronze ingestion:
    task_key: bronze_ingestion
    notebook_task: path to 01_bronze_ingestion
    Use job cluster or existing cluster
    Pass parameters (bucket names)
Define task 2: Silver transformation:
    task_key: silver_transform
    depends_on: bronze_ingestion
    notebook_task: path to 02_silver_transform
Define task 3: Gold aggregation:
    task_key: gold_aggregation
    depends_on: silver_transform
    notebook_task: path to 03_gold_aggregation
Define task 4: Data quality checks:
    task_key: data_quality
    depends_on: gold_aggregation
    notebook_task: path to 04_data_quality
Add schedule configuration:
    quartz_cron_expression from variable
    timezone_id: UTC
    pause_status: UNPAUSED
Add email notifications:
    on_start (optional)
    on_success
    on_failure
Add retry configuration:
    max_retries: 2
    min_retry_interval_millis: 60000