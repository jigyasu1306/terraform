variable "project_name" {
    type = string
    description = "Name of the project"
}

variable "project_id" {
    type = string
    description = "Project ID"
}

variable "region" {
    type = string
    description = "asia-south1"
}

variable "zone" {
    type = string
    description = "asia-south1-c"
  
}

variable "instance" {
    type = string
    description = "Name of Instance"
}

variable "subnework" {
    type = string
    description = "Name of Subnetwork"
}
variable "subnetwork2" {
    type = string
    description = "Name of subnet for PSCEP"
}

variable "ip_cidr_range02" {
    type = number
    description = "ip_cidr_range for PSCEP"
  
}

variable "ip_cidr_range" {
    type = number
    description = "CIDR range for subnetwork"
}

variable "vpc_network_name" {
    type = string
    description = "Giving a name for vpc network"
}

variable "service_account" {
    type = string
    description = "Name of Service Account"
  
}

variable "zone" {
    type = string
    description = "Name of Zone"
  
}