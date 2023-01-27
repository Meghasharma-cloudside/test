resource "google_project_service" "project" {
    count = length(var.sample)
  service = element(var.sample, count.index)
}
