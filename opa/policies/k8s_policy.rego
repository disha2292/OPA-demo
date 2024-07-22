package kubernetes

default allow = false

allow {
    input.kind == "Pod"
    input.spec.containers[_].resources.limits.memory != ""
    input.spec.containers[_].resources.limits.cpu != ""
}
