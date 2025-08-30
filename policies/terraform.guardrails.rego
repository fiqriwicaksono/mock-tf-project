package terraform.guardrails

# Example: deny prod changes unless PR has 'approved' label (demo input schema)
deny[msg] {
  input.env == "prod"
  not input.labels.approved
  msg := "Prod changes require 'approved' label"
}
