output "project_path" {
  description = "Ruta del directorio del proyecto generado"
  value       = local.project_dir
}

output "readme_path" {
  description = "Ruta del README generado"
  value       = local_file.readme.filename
}