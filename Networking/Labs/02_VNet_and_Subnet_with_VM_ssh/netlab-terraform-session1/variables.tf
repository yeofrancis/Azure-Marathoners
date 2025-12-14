variable "location" {
    type = string
    default = "southeastasia"
  
}

variable "prefix" {
    type = string
    default = "netlab"
}

variable "admin_username" {
    type = string
    default = "azureuser"
}
variable "ssh_public_key_path" {
    type = string
    #default = "~/.ssh/az-netlab-key.pub" #"~/.ssh/id_rsa.pub"
    default = "/home/yeofrancis/.ssh/az-netlab-key.pub"

}
