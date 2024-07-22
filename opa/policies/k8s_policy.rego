package kubernetes

default allow = false

allow {
    input.kind == "Service"
    input.spec.type == "LoadBalancer"
    count(input.spec.ports) > 0
    input.spec.selector != null
}
