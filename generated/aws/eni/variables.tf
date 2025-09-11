data "terraform_remote_state" "subnet" {
  backend = "local"
  config = {
    path = "../subnet/terraform.tfstate"
  }
}