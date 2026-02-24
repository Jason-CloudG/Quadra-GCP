variable "enable_gke" {
  description = "Enable GKE creation"
  type        = bool
  default     = false
}

variable "enable_vm" {
  description = "Enable VM creation"
  type        = bool
  default     = false
}

variable "enable_cloudsql" {
  description = "Enable Cloud SQL creation"
  type        = bool
  default     = false
}

variable "enable_artifact_registry" {
  description = "Enable Artifact Registry creation"
  type        = bool
  default     = true
}
