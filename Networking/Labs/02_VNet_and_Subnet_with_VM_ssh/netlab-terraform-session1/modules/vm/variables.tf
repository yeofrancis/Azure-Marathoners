variable "name_prefix" {
  type = string
}

variable "location" {
  type = string
}

variable "resource_group_name" {
  type = string
  description = "Name of the resource group where VM resources will be created (required)"

  validation {
    condition     = length(trimspace(var.resource_group_name)) > 0
    error_message = "resource_group_name must be a non-empty string."
  }
}


variable "admin_username" {
  type = string
}

variable "ssh_public_key_path" {
  type = string
}

variable "subnet_id" {
  type = string
}

variable "vm_size" {
  type    = string
  default = "Standard_B1s"
}
