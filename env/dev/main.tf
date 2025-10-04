module "dev" {
  source = "../../infra/main.tf"

  gcp_project_id = "your-gcp-project-id"
  region         = "us-central1"
  zone           = "us-central1-a"
  instance_name  = "basic-vm"
  instance_type  = "f1-micro"
}