provider "random" {

}

variable "number_of_pets" {
  type        = number
  description = "The number of pets to generate"
}

resource "random_pet" "gerick_pet" {
  length    = var.number_of_pets
  separator = "-"
}

output "random_pet_name" {
  value = random_pet.gerick_pet.id
}
