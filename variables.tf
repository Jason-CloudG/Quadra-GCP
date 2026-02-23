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

variable "GOOGLE_CREDENTIALS" {
  type      = string
  sensitive = true
}
