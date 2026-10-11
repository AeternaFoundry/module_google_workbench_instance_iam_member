variable "workbench_instance_iam_members" {
  description = <<EOT
Map of workbench_instance_iam_members, attributes below
Required:
    - member
    - name
    - role
Optional:
    - location
    - project
    - condition (block):
        - description (optional)
        - expression (required)
        - title (required)
EOT

  type = map(object({
    member   = string
    name     = string
    role     = string
    location = optional(string)
    project  = optional(string)
    condition = optional(object({
      description = optional(string)
      expression  = string
      title       = string
    }))
  }))
}

