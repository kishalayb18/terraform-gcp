project_id         = "cloudplay-437100"
region             = "us-central1"
vpc_name           = "custom-vpc"
subnet_names       = ["private-subnet", "public-subnet"]
public_subnet_cidr_ranges = ["10.0.1.160/16"]
private_subnet_cidr_ranges = ["10.0.0.0/16", "10.0.0.48/16", "10.0.0.32/16"]
