# Terraform Infrastructure Project

**Author:** Rashed M. Alghamdi  
**LinkedIn:** [www.linkedin.com/in/engrashed1](https://www.linkedin.com/in/engrashed1)

---

## 📁 Project Overview

This project provisions a complete cloud infrastructure on **Microsoft Azure** using **Terraform**.
It is designed following best practices of modular Terraform development, separating resources into independent, reusable modules:

- **Networking**
- **Compute (Virtual Machines)**
- **Data Storage (Storage Account, PostgreSQL Database, Key Vault)**

The goal is to deliver clean, scalable, and professional infrastructure code, suitable for real-world production environments.

---

## ⚙️ Project Structure

```bash
.
├── modules/
│   ├── compute/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   ├── datastore/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   └── network/
│       ├── main.tf
│       ├── variables.tf
│       └── outputs.tf
├── main.tf
├── variables.tf
├── outputs.tf
├── terraform.tfvars
├── .gitignore
└── README.md
```

Each module is self-contained and can be reused or extended independently.

---

## 📊 Resources Created

- **Virtual Network**:
  - With custom Address Space and Subnet(s).
- **Network Security Group (NSG)**:
  - With inbound/outbound security rules.
- **Two Virtual Machines**:
  - Main Application VM.
  - ChromaDB Host VM.
  - Each VM has:
    - Static Public IP.
    - Private IP.
    - Attached NIC with NSG association.
- **Azure Storage Account**:
  - Configured with Standard or Premium Tier and specified replication.
- **Azure PostgreSQL Flexible Server**:
  - With full admin access.
  - Custom storage, backup, and performance settings.
- **Azure Key Vault**:
  - Secure storage for secrets.

---

## 🔑 SSH Access

To quickly SSH into your machines:

```bash
ssh azureuser@<public_ip>
```

Public IP addresses are shown after `terraform apply`.

---

## 📚 What I Learned From This Project

Through this project, I developed a deep understanding of:

- Building professional, modular Terraform infrastructure from scratch.
- Structuring code into clean and reusable modules.
- Managing Azure resources programmatically.
- Implementing best practices in Infrastructure as Code (IaC).
- Handling outputs for easy infrastructure management.
- Protecting sensitive data using `.gitignore`.

This project helped me bridge theoretical knowledge with real-world cloud engineering practices.

---

## 📞 Contact Me

If you'd like to connect or discuss the project, feel free to reach out:

- **Name:** Rashed M. Alghamdi
- **LinkedIn:** [www.linkedin.com/in/engrashed1](https://www.linkedin.com/in/engrashed1)

