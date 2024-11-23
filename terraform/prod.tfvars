project_id         = "cloudplay-437100"
region             = "us-central1"
vpc_name           = "prod-custom-vpc"
subnet_names       = ["private-subnet", "public-subnet"]
public_subnet_cidr_ranges = ["$PUBLICCIDR"]
private_subnet_cidr_ranges = ["10.0.0.0/24", "10.0.0.48/27"]