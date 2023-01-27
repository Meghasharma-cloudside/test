resource "google_project_service" "project" {
    count = length(var.sample)
  project = "your-project-id"
  service = element(var.sample, count.index)
}