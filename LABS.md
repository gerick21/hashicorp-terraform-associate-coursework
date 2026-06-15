# Terraform Associate Labs Registry

This file tracks all hands-on labs organized by module for the HashiCorp Terraform Associate (004) certification.

---

## Module 01: HCL Basics

| Lab    | Folder                                                      | Description                                             | Status    |
| ------ | ----------------------------------------------------------- | ------------------------------------------------------- | --------- |
| **01** | `labs/lab-01-getting-started-with-terraform-configuration/` | Core HCL blocks, arguments, resources, and data sources | ✅ Active |

**Module Goals:**

- Learn HashiCorp Configuration Language (HCL) syntax
- Understand resources, data sources, and basic configuration patterns
- Practice writing reusable HCL code

---

## Module 02: Terraform CLI Commands

| Lab    | Folder                         | Description                                        | Status    |
| ------ | ------------------------------ | -------------------------------------------------- | --------- |
| **02** | `labs/lab-02-init-plan-apply/` | Terraform workflow: init, plan, apply, and destroy | ✅ Active |

**Module Goals:**

- Master the core Terraform workflow
- Practice initialization, planning, and applying changes
- Understand state management basics

---

## Module 03: Configuring Multiple Providers

| Lab    | Folder                                 | Description                                      | Status    |
| ------ | -------------------------------------- | ------------------------------------------------ | --------- |
| **03** | `labs/lab-03-multi-region-deployment/` | Provider aliases and multi-region AWS deployment | ✅ Active |

**Module Goals:**

- Configure multiple providers in a single root module
- Use provider aliases for targeting specific deployments
- Deploy resources across multiple AWS regions
- Practice `for_each` with maps for dynamic resource creation

---

## Quick Navigation

```
labs/
├── lab-01-getting-started-with-terraform-configuration/
│   ├── github.tf
│   └── test.tf
├── lab-02-init-plan-apply/
│   ├── main.tf
│   ├── terraform.tfstate
│   └── terraform.tfstate.backup
├── lab-03-multi-region-deployment/
│   ├── main.tf
│   ├── providers.tf
│   ├── variables.tf
│   └── providers/
└── lab-04-... (future labs)
```

---

## Adding New Labs

When you add a new lab:

1. Create a folder `lab-XX-<descriptive-name>` inside the `labs/` directory
2. Add your Terraform configuration files
3. Update this registry with the lab details and description
4. Mark status as ✅ Active or 🔄 In Progress

**Example:**

```
labs/
├── lab-01-getting-started-with-terraform-configuration/
├── lab-02-init-plan-apply/
├── lab-03-multi-region-deployment/
└── lab-04-my-new-lab/  (add here)
```
