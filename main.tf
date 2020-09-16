provider "google" {
    version = "3.39.0"
    credentials = file("credentials.json")
    project = "new-test-1-289609"
    region = "europe-west3"
    zone = "europe-west3-b"
}

resource "google_sql_database_instance" "test-db" {
    name = "test-db-name"
    database_version = "POSTGRES_12"
    settings {
      tier = "db-f1-micro"
    }
}

# resource "google_app_engine" "app-db" {
#   project = google_project.app-db.new-test1-289609
#   location_id = "europe-west3"
# }