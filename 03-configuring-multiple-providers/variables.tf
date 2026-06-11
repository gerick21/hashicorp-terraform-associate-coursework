variable "buckets_east" {
  type = map(string)
  default = {
    "backup-bucket"    = "gerick-backup-bucket-east"
    "terraform-bucket" = "gerick-terraform-bucket-east"
  }

}

variable "buckets_west" {
  type = map(string)
  default = {
    "backup-bucket"    = "gerick-backup-bucket-west"
    "terraform-bucket" = "gerick-terraform-bucket-west"
  }

}
