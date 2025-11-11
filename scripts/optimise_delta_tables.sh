# List all Delta tables in gold schema
# For each table:
    # Run OPTIMIZE command
    # Run ZORDER BY common filter columns
    # Run VACUUM to remove old files (7 days retention)
# Display optimization statistics:
    # Files removed
    # Storage saved
    # Time taken
# Schedule this as cron job if required