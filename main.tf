resource "docker_image" "hello-world" {
  name = "hello-world:latest"
}

resource "docker_container" "hello-world" {
  image = docker_image.hello-world.latest
  name  = "hello-world-container"
  must_run = true
}
