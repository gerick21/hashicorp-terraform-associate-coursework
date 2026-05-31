provider "random" {

}

resource "random_pet" "gerick_pet" {
  length    = 3
  separator = "-"
}

output "random_pet_name" {
  value = random_pet.gerick_pet.id
}
