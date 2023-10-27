variable "aws_region" {
  description = "AWS region for creating the EFS file system."
  default     = "us-east-2" # Modify this to your desired AWS region.
}

variable "efs_name" {
  description = "Name for the EFS file system."
  default     = "Myfilesystem"
}

variable "subnet_id" {
  description = "ID of the subnet in which to create the EFS mount target."
  default     = "subnet-0b7744be0ca9927ad" # Modify this to your desired subnet ID.
}
