# Terraform Project

## Installing Terraform on Windows

### Option 1: Using Chocolatey (Recommended)

1. Open PowerShell as Administrator
2. Install Chocolatey if you haven't already:
   ```powershell
   Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
   ```
3. Install Terraform:
   ```powershell
   choco install terraform
   ```

### Option 2: Using winget

1. Open PowerShell or Command Prompt
2. Run:
   ```powershell
   winget install Hashicorp.Terraform
   ```

### Option 3: Manual Installation

1. Download Terraform from the official website: https://developer.hashicorp.com/terraform/downloads
2. Select the Windows AMD64 version
3. Extract the downloaded ZIP file
4. Move `terraform.exe` to a directory (e.g., `C:\terraform`)
5. Add the directory to your system PATH:
   - Open **System Properties** → **Advanced** → **Environment Variables**
   - Under **System variables**, find **Path** and click **Edit**
   - Click **New** and add `C:\terraform`
   - Click **OK** to save

### Verify Installation

Open a new terminal and run:
```powershell
terraform -version
```

You should see the installed Terraform version.
