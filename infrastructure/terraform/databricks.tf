Create Databricks workspace (or import existing):
    workspace_name: ${name_prefix}-workspace
    aws_region from variable
    credentials_id (from Databricks setup)
    storage_configuration_id
Create storage configuration:
    S3 bucket for workspace root
    IAM role for workspace
Create credentials configuration:
    IAM role ARN
    External ID
Create VPC configuration (if using customer-managed VPC):
    VPC ID
    Subnet IDs
    Security group IDs
Create network policy (optional):
    Restrict IP ranges
    Allow Power BI / BI tool IPs