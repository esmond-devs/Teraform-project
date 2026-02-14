# Terraform Test Configuration

terraform {
  required_version = ">= 1.0.0"
}

# Local variable for testing
variable "message" {
  description = "A test message"
  type        = string
  default     = "Hello, Terraform!"
}

# Output the test message
output "test_output" {
  description = "Test output message"
  value       = var.message
}
