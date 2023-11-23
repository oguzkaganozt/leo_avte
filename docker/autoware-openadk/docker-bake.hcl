group "default" {
  targets = ["base", "devel", "prebuilt", "runtime-planning-control"]
}

// For docker/metadata-action
target "docker-metadata-action-base" {}
target "docker-metadata-action-devel" {}
target "docker-metadata-action-prebuilt" {}
target "docker-metadata-action-runtime-monolithic" {}
target "docker-metadata-action-runtime-main-perception" {}
target "docker-metadata-action-runtime-planning-control" {}
target "docker-metadata-action-runtime-simulator" {}

target "base" {
  inherits = ["docker-metadata-action-base"]
  dockerfile = "docker/autoware-openadk/base/Dockerfile"
  target = "base"
}

target "devel" {
  inherits = ["docker-metadata-action-devel"]
  dockerfile = "docker/autoware-openadk/base/Dockerfile"
  target = "devel"
}

target "prebuilt" {
  inherits = ["docker-metadata-action-prebuilt"]
  dockerfile = "docker/autoware-openadk/base/Dockerfile"
  target = "prebuilt"
}

target "runtime-monolithic" {
  inherits = ["docker-metadata-action-runtime-monolithic"]
  dockerfile = "docker/autoware-openadk/monolithic/Dockerfile"
  target = "runtime-monolithic"
}

target "runtime-main-perception" {
  inherits = ["docker-metadata-action-runtime-main-perception"]
  dockerfile = "docker/autoware-openadk/services/main-perception/Dockerfile"
  target = "runtime-main-perception"
}

target "runtime-planning-control" {
  inherits = ["docker-metadata-action-runtime-planning-control"]
  dockerfile = "docker/autoware-openadk/services/planning-control/Dockerfile"
  target = "runtime-planning-control"
}

target "simulator" {
  inherits = ["docker-metadata-action-simulator"]
  dockerfile = "docker/autoware-openadk/services/simulator/Dockerfile"
  target = "simulator"
}
