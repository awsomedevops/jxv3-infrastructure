module "eks-jx" {
  source          = "jenkins-x/eks-jx/aws"
  cluster_name    = var.cluster_name
  cluster_version = var.cluster_version
  region          = var.region
  vault_user      = var.vault_user
  is_jx2          = false
  jx_git_url      = var.jx_git_url
  jx_bot_username = var.jx_bot_username
  jx_bot_token    = var.jx_bot_token
  force_destroy   = var.force_destroy
  enable_logs_storage = var.enable_logs_storage
  enable_reports_storage = var.enable_reports_storage
  enable_repository_storage = var.enable_repository_storage
  use_vault = var.use_vault
  install_kuberhealthy = var.install_kuberhealthy
}
