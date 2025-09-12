# ECS Cluster Variables
variable "cluster_name" {
  description = "Name of the ECS cluster"
  type        = string
  default     = "DUGOUT-CLUSTER"
}

variable "cluster_capacity_providers" {
  description = "List of short names of one or more capacity providers to associate with the cluster"
  type        = list(string)
  default     = ["FARGATE", "FARGATE_SPOT"]
}

variable "cluster_default_capacity_provider_strategy" {
  description = "The capacity provider strategy to use by default for the cluster"
  type = list(object({
    capacity_provider = string
    weight           = number
    base             = number
  }))
  default = [
    {
      capacity_provider = "FARGATE"
      weight           = 1
      base             = 1
    }
  ]
}

variable "cluster_tags" {
  description = "Key-value map of resource tags"
  type        = map(string)
  default = {
    Name        = "DUGOUT-CLUSTER"
    Environment = "production"
    Project     = "DugOut"
  }
}