package kubernetes

default allow = false

allow {
    input.kind == "Deployment"
    input.spec.replicas != null
}
