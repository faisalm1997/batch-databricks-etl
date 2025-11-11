# Check if Unity Catalog is enabled in workspace
# Create metastore (if not exists):
    # databricks unity-catalog create metastore
# Attach metastore to workspace
# Create catalog:
    # databricks unity-catalog create catalog
# Create schemas (bronze, silver, gold):
    # databricks unity-catalog create schema
# Grant permissions:
    # GRANT USE CATALOG ON catalog TO role
    # GRANT ALL PRIVILEGES ON SCHEMA TO role
# Register external location for S3:
    # Link S3 buckets to Unity Catalog
# Verify setup:
    # List catalogs and schemas
# Print success message