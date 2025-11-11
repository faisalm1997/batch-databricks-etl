# Import unittest and pyspark
# Set up SparkSession in setUp method
# Test clean_data function:
    # Create test DataFrame with nulls
    # Call function
    # Assert nulls removed
# Test standardize_dates function:
    # Create DataFrame with various date formats
    # Call function
    # Assert all dates in standard format
# Test parse_json_columns function:
    # Create DataFrame with JSON strings
    # Call function
    # Assert nested fields extracted
# Test calculate_derived_columns function:
    # Create input DataFrame
    # Call function
    # Assert derived columns exist and correct
# Add tearDown to stop SparkSession