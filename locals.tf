  locals {
  username_slug = var.ddr_tfc_project_name
  customer_name = var.customer_name != "" ? substr(var.customer_name, 0, 10) : "hashicat-inc"
  default_tags = {
    owner       = local.username_slug
    environment = var.env
    customer    = local.customer_name
  }
}
