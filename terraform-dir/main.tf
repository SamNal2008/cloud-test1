provider "google" {
    version = "3.39.0"
    credentials = file("../credentials.json")
    project = "test-db-289713"
    region = "europe-west3"
    zone = "europe-west3-b"
}

resource "google_sql_database_instance" "db-sql" {
    name = "db-sql"
    database_version = "POSTGRES_12"
    settings {
      tier = "db-f1-micro"
    }
}

resource "google_app_engine_application" "app-python" {
  project = "test-db-289713"
  location_id = "europe-west3"
}