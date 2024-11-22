project_id         = "cloudplay-437100"
region             = "us-central1"
vpc_name           = "custom-vpc"
subnet_names       = ["private-subnet", "public-subnet"]
public_subnet_cidr_ranges = ["10.0.0.170/28"]
private_subnet_cidr_ranges = ["10.0.0.0/28", "10.0.0.61/28" ]