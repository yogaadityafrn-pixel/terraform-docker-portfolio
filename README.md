# Infrastructure as Code: Terraform & Docker with CI/CD

Welcome to my DevOps portfolio project! This repository demonstrates the implementation of **Infrastructure as Code (IaC)** to automate the provisioning of a local web server, complete with a Continuous Integration (CI) pipeline.

## Project Overview
In a modern cloud environment, manual server configuration is inefficient and prone to errors. This project solves that by defining a web server infrastructure (Nginx) using **Terraform** and deploying it within an isolated **Docker** container. 

Furthermore, this repository is integrated with **GitHub Actions** to ensure that every code push is automatically validated and tested for infrastructural integrity.

##  Tech Stack
* **Infrastructure as Code:** Terraform (HCL)
* **Containerization:** Docker Desktop
* **CI/CD Automation:** GitHub Actions
* **Code Editor:** Visual Studio Code

##  Key Features
1. **Automated Provisioning:** Downloads the Nginx image and runs the container on port `8080` without manual Docker GUI interaction.
2. **State Management:** Utilizes Terraform state to track, modify, or gracefully destroy the infrastructure (`terraform destroy`).
3. **CI/CD Pipeline:** An automated workflow `.github/workflows/terraform-ci.yml` that triggers on every push to the `main` branch to run:
   * `terraform init`
   * `terraform validate`
   * `terraform plan`

## How to Run Locally
1. Ensure Docker Desktop is running.
2. Clone this repository.
3. Run `terraform init` to download the required provider (Kreuzwerker Docker).
4. Run `terraform plan` to view the execution blueprint.
5. Run `terraform apply` and type `yes` to deploy the Nginx server.
6. Open `http://localhost:8080` in your browser.

---
*Built to showcase practical DevOps capabilities. Feel free to explore the code!*