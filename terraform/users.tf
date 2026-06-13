resource "google_project_iam_member" "project_viewer_user" {
 project = "spartan-shadow-438812-q6"
 role    = "roles/viewer"
 member  = "user:saple998@gmail.com"
}
