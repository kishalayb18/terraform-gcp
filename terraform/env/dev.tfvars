project_id         = "cloudplay-437100"
region             = "us-central1"
vpc_name           = "custom-vpc"
subnet_names       = ["private-subnet", "public-subnet"]
public_subnet_cidr_ranges = ["10.0.7.0/24"]
private_subnet_cidr_ranges = ["10.0.0.0/24", "10.0.1.0/24", "10.0.2.0/24"]
database_username = "kishalay"
database_password = "$DB_PASSWORD"
