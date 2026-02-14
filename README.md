# Terraform Project

A secure Terraform configuration demonstrating infrastructure-as-code best practices with built-in security scanning.

## Features

- **AWS GuardDuty** - Intelligent threat detection
- **Encrypted CloudWatch Logs** - KMS encryption with key rotation
- **Secure Security Groups** - Restricted ingress/egress rules

## Prerequisites

- Terraform >= 1.0.0
- AWS CLI configured with credentials
- Security scanning tools (optional but recommended)

## Installing Terraform on Windows

### Option 1: Using winget (Recommended)

```powershell
winget install Hashicorp.Terraform
```

### Option 2: Using Chocolatey

```powershell
choco install terraform
```

### Option 3: Manual Installation

1. Download from: https://developer.hashicorp.com/terraform/downloads
2. Extract the ZIP file
3. Add `terraform.exe` location to your system PATH

### Verify Installation

```powershell
terraform -version
```

## Usage

```powershell
# Initialize Terraform
terraform init

# Preview changes
terraform plan

# Apply changes
terraform apply
```

## Security Scanning

This project uses security scanning tools to ensure compliance and best practices.

### Install Security Tools

```powershell
# Checkov - Compliance scanning (CIS, HIPAA, etc.)
pip install checkov

# Trivy - Vulnerability and misconfiguration scanner
winget install aquasecurity.trivy

# TFLint - Terraform linter (requires admin)
choco install tflint
```

### Run Security Scans

```powershell
# Scan with Trivy
trivy config .

# Scan with Checkov
checkov -d .
```

### Security Best Practices Implemented

| Practice | Implementation |
|----------|----------------|
| Encryption at rest | KMS key for CloudWatch Logs |
| Key rotation | Enabled on KMS key |
| Least privilege | Security groups restricted to internal network |
| Threat detection | AWS GuardDuty enabled |
| Audit logging | CloudWatch Logs with 90-day retention |

## Project Structure

```
.
├── main.tf          # Main Terraform configuration
├── .gitignore       # Ignore sensitive files
└── README.md        # This file
```

## Security Notes

- Never commit `.tfstate` files (may contain secrets)
- Never commit `.tfvars` files with sensitive values
- Use environment variables or AWS Secrets Manager for credentials
- Always run security scans before applying changes

## License

MIT
