# Create temp directory for sample data
# Generate sample Parquet files with Python:
    # Import pandas
    # Create DataFrame with sample data
    # Save to Parquet
# Upload to S3 bronze bucket:
    # aws s3 cp local_file s3://bronze-bucket/raw/
# Print success message
# Clean up temp directory