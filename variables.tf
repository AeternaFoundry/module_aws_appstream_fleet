variable "appstream_fleets" {
  description = <<EOT
Map of appstream_fleets, attributes below
Required:
    - instance_type
    - name
    - compute_capacity (block):
        - desired_instances (optional)
        - desired_sessions (optional)
Optional:
    - description
    - disconnect_timeout_in_seconds
    - display_name
    - enable_default_internet_access
    - fleet_type
    - iam_role_arn
    - idle_disconnect_timeout_in_seconds
    - image_arn
    - image_name
    - max_sessions_per_instance
    - max_user_duration_in_seconds
    - region
    - stream_view
    - tags
    - tags_all
    - domain_join_info (block):
        - directory_name (optional)
        - organizational_unit_distinguished_name (optional)
    - vpc_config (block):
        - security_group_ids (optional)
        - subnet_ids (optional)
EOT

  type = map(object({
    instance_type                      = string
    name                               = string
    stream_view                        = optional(string)
    region                             = optional(string)
    max_user_duration_in_seconds       = optional(number)
    max_sessions_per_instance          = optional(number)
    image_name                         = optional(string)
    image_arn                          = optional(string)
    idle_disconnect_timeout_in_seconds = optional(number)
    iam_role_arn                       = optional(string)
    fleet_type                         = optional(string)
    enable_default_internet_access     = optional(bool)
    display_name                       = optional(string)
    disconnect_timeout_in_seconds      = optional(number)
    description                        = optional(string)
    tags                               = optional(map(string))
    tags_all                           = optional(map(string))
    compute_capacity = object({
      desired_instances = optional(number)
      desired_sessions  = optional(number)
    })
    domain_join_info = optional(object({
      directory_name                         = optional(string)
      organizational_unit_distinguished_name = optional(string)
    }))
    vpc_config = optional(object({
      security_group_ids = optional(list(string))
      subnet_ids         = optional(list(string))
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.appstream_fleets : (
        v.disconnect_timeout_in_seconds == null || (v.disconnect_timeout_in_seconds >= 60 && v.disconnect_timeout_in_seconds <= 360000)
      )
    ])
    error_message = "must be between 60 and 360000"
  }
  validation {
    condition = alltrue([
      for k, v in var.appstream_fleets : (
        v.idle_disconnect_timeout_in_seconds == null || ((v.idle_disconnect_timeout_in_seconds >= 60 && v.idle_disconnect_timeout_in_seconds <= 360000) || (contains([0], v.idle_disconnect_timeout_in_seconds)))
      )
    ])
    error_message = "any of: must be between 60 and 360000; must be one of: 0"
  }
  validation {
    condition = alltrue([
      for k, v in var.appstream_fleets : (
        v.max_user_duration_in_seconds == null || (v.max_user_duration_in_seconds >= 600 && v.max_user_duration_in_seconds <= 432000)
      )
    ])
    error_message = "must be between 600 and 432000"
  }
  # Note: 5 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

