// aws settings
variable "aws" {
  type = object({
    github-oidc-provider = any
    access-key = string
    secret-key = string
    region = string
  })
  sensitive = true
}

variable "github" {
  type = object({
    access-token = string
    owner = string
  })
  sensitive = true
}

variable "kubernetes" {
  type = object({
    host = string
    client-certificate = string
    client-key = string
    cluster-ca-certificate = string
    namespace = string
    image-pull-secret-name = string
  })
}

variable "kubernetes-secret"          { type = map(string) }


