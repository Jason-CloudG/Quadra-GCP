variable "project_id" {
  description = "GCP Project ID"
  type        = string
  default     = "venkatesh-sandbox-new"
}

variable "region" {
  description = "GCP Region"
  type        = string
  default     = "asia-south1"
}

variable "gcp_credentials" {
  description = "Base64 encoded GCP service account key"
  type        = string
  sensitive   = true
}
