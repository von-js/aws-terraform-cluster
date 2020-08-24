variable "region" {
  description = "AWS Region"
  type        = string
  default     = "ap-southeast-1"
}

variable "server_port" {
  description = "Server port will be use for HTTP request"
  type        = number
  default     = 8080
}
# REMOTE STATE CONFIG
variable "db_remote_state_bucket" {
  description = "The name of the S3 bucket used for the database's remote state storage"
  type        = string
  default     = "von-tfstate"
}

variable "db_remote_state_key" {
  description = "The name of the key in the S3 bucket used for the database's remote state storage"
  type        = string
  default     = "stage/data-store/mysql/terraform.tfstate"
}
# LAUNCH CONFIGURATION NAME
variable "launch_configuration_name" {
  description = "Name of Launch configuration"
  type        = string
  default     = "terraform-lc"
}

# AUTOSCALING GROUP NAME
variable "asg_name" {
  description = "Name of Launch configuration"
  type        = string
  default     = "terraform-asg"
}

# INSTANCE TYPE
variable "instance_type" {
  description = "Amazon machine image instance type"
  type       = string
  default    = "t2.micro"
}
# INSTANCE ID
variable "instance_id" {
  description = "Amazon machine image id"
  type        = string
  default     = "ami-0007cf37783ff7e10"
}

# SECURITY GROUP NAME FOR INSTANCE 
variable "instance_sg_name" {
  description = "The name of security group of the instance"
  type        = string
  default     = "terraform-sg-instance"
}

# SECURITY GROUP NAME FOR INSTANCE 
variable "loadbalancer_name" {
  description = "The name of security group of the instance"
  type        = string
  default     = "terraform-alb"
}

# ALB SECURITY GROUP NAME
variable "alb_security_group_name" {
  description = "The name of the security group of ALB"
  type       = string
  default     = "terraform-alb-sg"
}
