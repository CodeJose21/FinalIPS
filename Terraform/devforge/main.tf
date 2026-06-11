terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.0"
    }
  }
}

module "project" {
  source = "./modules/project"

  project_name = var.project_name
  author       = var.author
  environment  = var.environment
  base_dir     = "${path.module}/output"
}


//Código sin módulos
/*terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.0"
    }
  }
}

locals {
  project_dir = "${path.module}/output/${var.project_name}"

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
}*/