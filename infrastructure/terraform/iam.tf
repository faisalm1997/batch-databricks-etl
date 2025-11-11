Create IAM role for Databricks:
    Allow EC2 service to assume role
    Name: ${name_prefix}-databricks-role
Create policy for S3 access:
    Allow s3:GetObject, s3:PutObject on all 3 buckets
    Allow s3:ListBucket
    Allow s3:DeleteObject (for optimisation)
Create policy for CloudWatch Logs:
    Allow logs:CreateLogGroup
    Allow logs:CreateLogStream
    Allow logs:PutLogEvents
Create policy for Glue Catalog (if using):
    Allow glue:GetTable, glue:CreateTable
    Allow glue:UpdateTable, glue:DeleteTable
    Allow glue:GetDatabase
    Attach policies to Databricks role
Create instance profile: Attach Databricks IAM role
Create cross-account role for Databricks control plane:
    Trust policy: Allow Databricks account
    External ID from Databricks setup