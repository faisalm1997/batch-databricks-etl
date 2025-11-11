# Get Databricks workspace URL from environment
# Get job ID from Terraform output or Databricks API:
    # databricks jobs list --output json
    # jq to filter by job name
# Trigger job run:
    # databricks jobs run-now --job-id $JOB_ID
    # Capture run_id from output
# Monitor job execution (optional):
    # Loop: databricks runs get --run-id $RUN_ID
    # Print status
    # Exit when terminal state (SUCCESS/FAILED)
# Print job URL for viewing in UI
# If failed, print error message and logs