module "dev" {
  source = "../../infra"

  gcp_project_id = var.gcp_project_id
  region         = var.region
  zone           = var.zone
  instance_name  = var.instance_name
  instance_type  = var.instance_type
  developers     = var.developers
}