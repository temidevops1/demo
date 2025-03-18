# ✅ VPC ID (Using an existing VPC)
variable "vpc_id" {
  description = "ID of the existing VPC"
  type        = string
  default     = "vpc-0b91f353193b5ff32"  # ✅ Ensure this matches your VPC
}

# ✅ Project Name
variable "project_name" {
  description = "Project name prefix"
  type        = string
  default     = "public-health"
}

# ✅ Public Subnets (Ensure CIDRs Match `main.tf`)
variable "public_subnets" {
  description = "List of public subnet CIDRs"
  type        = list(string)
  default     = ["172.31.1.0/24", "172.31.2.0/24"]
}

# ✅ Private Subnets (For EKS Worker Nodes)
variable "private_subnets" {
  description = "List of private subnet CIDRs"
  type        = list(string)
  default     = ["172.31.3.0/24", "172.31.4.0/24"]
}

# ✅ Private Subnets (For RDS)
variable "rds_private_subnets" {
  description = "List of private subnets for RDS"
  type        = list(string)
  default     = ["172.31.5.0/24", "172.31.6.0/24"]
}

# ✅ Availability Zones (Update for us-east-1)
variable "azs" {
  description = "List of Availability Zones"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"]
}

# ✅ EKS Cluster Name
variable "cluster_name" {
  description = "Name of the EKS Cluster"
  type        = string
  default     = "public-health-cluster"
}

# ✅ EKS Node Instance Type
variable "node_instance_type" {
  description = "Instance type for EKS worker nodes"
  type        = string
  default     = "t3.medium"
}

# ✅ Desired Number of Worker Nodes
variable "node_desired_size" {
  description = "Desired number of worker nodes"
  type        = number
  default     = 2
}

# ✅ Minimum Number of Worker Nodes
variable "node_min_size" {
  description = "Minimum number of worker nodes"
  type        = number
  default     = 1
}

# ✅ Maximum Number of Worker Nodes
variable "node_max_size" {
  description = "Maximum number of worker nodes"
  type        = number
  default     = 5
}

# ✅ ECR Repository Name
variable "repository_name" {
  description = "ECR repository name"
  type        = string
  default     = "public-health-tracker"
}

# ✅ Database Credentials (Stored in AWS Secrets Manager)
variable "db_username" {
  description = "Database username"
  type        = string
  default     = "admin"
}

variable "db_password" {
  description = "Database password"
  type        = string
  default     = "SuperSecretPassword"
}

# ✅ S3 Bucket Name for Logging
variable "s3_bucket_name" {
  description = "Name of the S3 bucket for logs"
  type        = string
  default     = "public-health-logs"
}
