locals {
  project_dir = "${var.base_dir}/${var.project_name}"

  gitignore_content = <<EOT
.env
node_modules/
*.log
EOT
}

resource "local_file" "readme" {
  filename = "${local.project_dir}/README.md"

  content = <<EOT
# ${var.project_name}

Generado automáticamente.

Autor: ${var.author}

Entorno: ${upper(var.environment)}
EOT
}

resource "local_file" "gitignore" {
  filename = "${local.project_dir}/.gitignore"
  content  = local.gitignore_content
}

resource "local_file" "src_keep" {
  filename = "${local.project_dir}/src/.keep"
  content  = ""
}

resource "local_file" "tests_keep" {
  filename = "${local.project_dir}/tests/.keep"
  content  = ""
}

resource "local_file" "docs_index" {
  filename = "${local.project_dir}/docs/index.md"

  content = <<EOT
# Documentación

Documentación del proyecto ${var.project_name}.
EOT
}