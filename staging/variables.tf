variable "GOOGLE_CREDENTIALS" {
  description = "The credential file for GCP"
  type        = string
  sensitive   = true
}

variable "project_id" {
  type = string
  default = "venkatesh-sandbox-new"
}

variable "region" {
  type    = string
  default = "asia-south1"
}

variable "zone" {
  type    = string
  default = "asia-south1-a"
}
