# Terraform Associate Certification Prep (004)

This repository is my hands-on workspace for the **HashiCorp Certified Terraform Associate (004)** certification. It captures course notes, practice configurations, and small Terraform exercises as I work through the material.

## Goals

- Learn HashiCorp Configuration Language (HCL) syntax and Terraform basics.
- Practice the core Terraform workflow: `init`, `plan`, `apply`, and `destroy`.
- Understand state, workspaces, backends, and provider configuration.
- Build reusable infrastructure with modules and clean variable definitions.
- Prepare for the official Terraform Associate exam with practical examples.

## Environment

- **IaC tool:** Terraform v1.5.0+
- **Providers used so far:** AWS and GitHub
- **Shell / OS:** Windows PowerShell and Command Prompt
- **Course source:** Bryan Krausen on Udemy

## Repository Structure

- [01-hcl-basics](01-hcl-basics) - Core HCL blocks, arguments, resources, and data sources.
- [02-terraform-cli-commands](02-terraform-cli-commands) - Terraform CLI basics, initialization, planning, applying, and destroying.
- [03-configuring-multiple-providers](03-configuring-multiple-providers) - Provider aliases and deploying the same resource pattern across multiple AWS regions.

## Module 03: Configuring Multiple Providers

This module shows how to configure more than one AWS provider in the same root module and target each provider explicitly when creating resources.

### What this example demonstrates

- A default AWS provider configured for `us-east-1`.
- A second AWS provider configured with the alias `west` for `us-west-2`.
- Separate `aws_s3_bucket` resources created in each region.
- `for_each` used with maps to create multiple buckets from input variables.

### Files in the module

- [main.tf](03-configuring-multiple-providers/main.tf) - Bucket resources for the east and west regions.
- [providers.tf](03-configuring-multiple-providers/providers.tf) - AWS provider configuration and aliasing.
- [variables.tf](03-configuring-multiple-providers/variables.tf) - Bucket name maps for each region.

### Key Terraform pattern

The important pattern in this module is provider selection on a per-resource basis:

```hcl
provider = aws.west
```

That line tells Terraform to use the aliased `west` provider for the resource instead of the default provider.

## Notes

- More modules will be added as the course progresses.
- Each folder is intended to stay small, focused, and easy to revisit when reviewing the exam objectives.

---

Managed with love and Infrastructure as Code.
