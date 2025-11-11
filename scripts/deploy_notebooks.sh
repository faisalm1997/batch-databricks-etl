# Check if Databricks CLI is installed
# If not, print installation instructions
# Get Databricks host and token from environment or config
# Configure Databricks CLI:
    # databricks configure --token
# Upload notebooks to workspace:
    # databricks workspace import_dir
    # Source: databricks/notebooks
    # Target: /Workspace/notebooks
    # Flag: --overwrite
# Verify notebooks uploaded:
    # databricks workspace ls /Workspace/notebooks
# Print success message with paths