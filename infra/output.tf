output "IP_Public" {
  value       = google_compute_instance.vm_instance.network_interface[0].network_ip
  description = "O IP público da instância"
}
output "Instance_Name" {
  value       = google_compute_instance.vm_instance.name
  description = "O nome da instância criada"
}