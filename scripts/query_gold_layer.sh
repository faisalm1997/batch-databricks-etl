# Get Databricks SQL warehouse endpoint
# Or use Databricks Connect for local querying
# Example queries to run:
    # SELECT COUNT(*) FROM gold.daily_metrics
    # SELECT * FROM gold.customer_dimension LIMIT 10
    # SELECT date, total_records FROM gold.daily_metrics ORDER BY date DESC LIMIT 7
# Execute queries with databricks-sql-connector (Python)
# Display results in formatted table
# Export to CSV if needed