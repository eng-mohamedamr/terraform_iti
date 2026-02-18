module "network" {
  source             = "./network"
  vpc_cidr_block     = var.vpc_cidr_block
  vpc_tag            = var.vpc_tag
  public1_cidr_block = var.public1_cidr_block
  public1_tag        = var.public1_tag
  public2_cidr_block = var.public2_cidr_block
  public2_tag        = var.public2_tag
  az_1               = var.az_1
  az_2               = var.az_2
}