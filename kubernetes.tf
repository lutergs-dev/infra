resource "kubernetes_namespace" "cert-manager" {
  metadata {
    name = "cert-manager"
  }
}

resource "kubernetes_secret" "cloudflare-api-token" {
  metadata {
    name      = "cloudflare-api-token"
    namespace = kubernetes_namespace.cert-manager.metadata[0].name
  }
  data = {
    "api-token" = cloudflare_api_token.cert-manager-api-token.value
  }
}

resource "kubernetes_namespace" "lutergs" {
  metadata {
    name = "lutergs"
    labels = {
      "istio-injection" = "enabled"
    }
  }
}

resource "kubernetes_namespace" "coin-trader" {
  metadata {
    name = "coin-trader"
    labels = {
      "istio-injection" = "enabled"
    }
  }
}

resource "kubernetes_namespace" "music-share" {
  metadata {
    name = "music-share"
    labels = {
      "istio-injection" = "enabled"
    }
  }
}