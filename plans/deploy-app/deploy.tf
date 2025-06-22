resource "kubernetes_namespace" "terraform-k8s" {
  metadata {
    name = "app"
  }
}

resource "kubernetes_deployment" "myapp" {
  metadata {
    name      = "myapp"
    namespace = kubernetes_namespace.terraform-k8s.metadata[0].name
  }

  spec {
    replicas = 1

    selector {
      match_labels = {
        app = "myapp"
      }
    }

    template {
      metadata {
        labels = {
          app = "myapp"
        }
      }

      spec {
        container {
          name  = "myapp"
          image = "aeratestacr.azurecr.io/myapp:latest"

          port {
            container_port = 80
          }
        }
      }
    }
  }
}

