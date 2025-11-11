Define aws_region variable
Define project_name variable
Define environment variable
Databricks variables:
    databricks_account_id
    databricks_host (workspace URL)
    databricks_token (sensitive)
Cluster variables:
    cluster_node_type (i3.xlarge)
    cluster_min_workers, cluster_max_workers
    cluster_spark_version
Storage variables:
    enable_versioning
    lifecycle_rules
Unity Catalog variables:
    enable_unity_catalog (bool)
    metastore_name
Job variables:
    schedule_cron_expression
    job_timeout
    max_concurrent_runs