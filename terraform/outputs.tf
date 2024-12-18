# output "vpc_name" {
#   description = "Name of the created VPC"
#   value       = google_compute_network.vpc.name
# }

# output "private_subnet_name" {
#   description = "Name of the created private subnet"
#   # value       = google_compute_subnetwork.private_subnet.name
#   value =  google_compute_subnetwork.private_subnet[count.index].name
  
# }

# output "public_subnet_name" {
#   description = "Name of the created public subnet"
#   # value       = google_compute_subnetwork.public_subnet.name
#   value =  google_compute_subnetwork.public_subnet[count.index].name
# }

output "db_username" {
  description = "db username"
  value = google_sql_user.primaryuser.name
}

output "db_password" {
  description = "db password"
  value = google_sql_user.primaryuser.password
  sensitive = true
}
