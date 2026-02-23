resource "google_sql_database_instance" "mysql" {
  name             = "mysql-instance-tfm"
  database_version = "MYSQL_8_0"
  region           = var.region
  project          = var.project_id

  settings {
    tier = "db-custom-1-3840"
  }
}
