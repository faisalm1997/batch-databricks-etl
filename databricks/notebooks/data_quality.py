# Import libraries
# Define quality rules dictionary:
    # rule_name: SQL condition
    # Example: "no_nulls_in_id": "id IS NOT NULL"
# Read Silver and Gold tables
# Run quality checks on Silver:
    # Loop through rules
    # Count total records
    # Count valid records (filter by rule)
    # Calculate pass rate
    # Store result (rule, total, valid, pass_rate, status)
# Run quality checks on Gold:
    # Similar to Silver
    # Additional checks for aggregations
# Create quality report DataFrame:
    # Convert results to DataFrame
    # Add columns: table, rule, pass_rate, status, timestamp
# Write quality results to monitoring table:
    # .mode("append")
    # .saveAsTable("monitoring.data_quality_checks")
# Check for failures:
    # If any rule fails (pass_rate < threshold)
    # Raise exception to fail job
    # Or send alert
# Display quality report
# Create quality score visualization (optional)
# Return summary of checks