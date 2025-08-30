# Infra (Plan-only) — K8s/VM Simulators

This repo demonstrates **plan-only** Terraform CI using realistic, configurable
modules that *simulate* a Kubernetes cluster and a VM instance without cloud creds.

- `modules/k8s_cluster_sim`: version, node_count, instance_type, max_pods, etc.
- `modules/vm_instance_sim`: cpu, memory_gb, disk_gb, public_ip, os
- `envs/{dev,staging,prod}`: environment entrypoints
- `.github/workflows/tf-plan.yml`: CI (fmt/validate/tflint/tfsec/plan → PR comment)
- `policies/*.rego`: OPA examples (optional)
