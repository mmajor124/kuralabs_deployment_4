#configure aws provider
provider "aws" {
  region    = var.region
  profile   = "default"
}

#create vpc
module "myvpc" {
  source                            = "../module_dep4/vpcmodule"
  region                            = var.region
  project_name                      = var.project_name
  vpc_cidr                          = var.vpc_cidr
  public_subnet_az1_cidr            = var.public_subnet_az1_cidr
 }

