output "ip" {
  value       = module.dev.IP_Public
  description = "O IP público da instância do módulo dev"
}

output "instance" {
  value       = module.dev.Instance_Name
  description = "O nome da instância criada pelo módulo dev"
}