Create cluster policy (optional):
    Restrict instance types
    Set autoscaling limits
    Set auto-termination
Create all-purpose cluster:
    cluster_name: ${name_prefix}-interactive
    spark_version from variable
    node_type_id from variable
    autoscale: min/max workers
    autotermination_minutes: 30
    aws_attributes: instance_profile_arn
    spark_conf: Delta Lake settings
    custom_tags
Create job cluster configuration (for production jobs):
    Similar to above but without autotermination
    Enable spot instances for cost savings
    Use larger instance types