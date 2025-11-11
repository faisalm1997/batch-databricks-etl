Include root terragrunt.hcl
Define locals (environment, region)
Set input variables:
    Databricks workspace config
    Cluster configuration (node type, autoscale)
    S3 bucket names (bronze, silver, gold)
    Unity Catalog settings
    Job schedule (cron expression)
    Monitoring settings
    Tags