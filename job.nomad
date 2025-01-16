job "hashicorp/web/frontend" {
  region = "us"
  datacenters = ["us-west-1", "us-east-1"]

  constraint {
    attribute = "$attr.kernel.name"
    value = "linux"
  }

  update {
    stagger = "30s"
    max_parallel = 1
  }

  group "frontend" {
    count = 10

    task "web" {
      driver = "docker"
      config {
        image = "hashicorp/web-frontend:latest"
      }

      resources {
        cpu = 500
        memory = 128
        network {
          mbits = 10
          dynamic_ports = ["http"]
        }
      }
    }
  }
}
