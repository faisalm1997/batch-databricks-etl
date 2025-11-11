Create metastore:
    name: ${name_prefix}-metastore
    storage_root: S3 path for Unity Catalog
    region: aws_region
Attach metastore to workspace
Create catalog:
    name: project_name
    comment: "Medallion architecture catalog"
Create schemas:
    bronze schema
    silver schema
    gold schema
    monitoring schema (for data quality)
Grant permissions:
    Allow cluster to read/write
    Set ownership
Create external location:
    Point to S3 buckets
    Attach IAM role
