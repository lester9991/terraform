
resource "google_bigquery_dataset" "dataset" {
  dataset_id                  = "example_dataset"
  friendly_name               = "test"
  description                 = "This is a test description"
  location                    = "asia-south1"
  default_table_expiration_ms = 3600000

  labels = {
    env = "default"
  }

}

resource "google_service_account" "bqowner" {
  account_id = "bqowner"
}

resource "google_bigquery_dataset_access" "access" {
  dataset_id    = google_bigquery_dataset.dataset.dataset_id
  role          = "roles/bigquery.dataOwner"
  user_by_email = google_service_account.bqowner.email
}
