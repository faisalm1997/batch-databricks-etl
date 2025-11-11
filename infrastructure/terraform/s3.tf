Create bronze bucket:
    Name: ${name_prefix}-bronze-${account_id}
    Enable versioning
    Add lifecycle rule (delete after 90 days)
    Tags: Layer=Bronze
Create silver bucket:
    Name: ${name_prefix}-silver-${account_id}
    Enable versioning
    Add lifecycle rule (delete after 365 days)
    Tags: Layer=Silver
Create gold bucket:
    Name: ${name_prefix}-gold-${account_id}
    Enable versioning
    No lifecycle rule (keep indefinitely)
    Tags: Layer=Gold
Create logs bucket:
    For Databricks cluster logs
Add bucket policies:
    Allow Databricks IAM role to read/write
    Enable server-side encryption on all buckets