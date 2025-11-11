Create Databricks secret scope:
    name: ${name_prefix}-secrets
    Use AWS Secrets Manager backed scope
Link to AWS Secrets Manager
Create secrets:
    API keys (if needed for data sources)
    Database credentials (if pulling from external DB)