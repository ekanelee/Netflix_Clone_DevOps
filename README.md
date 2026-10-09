# Netflix_Clone_DevOps

![Project Animation](Project_Animation.gif)

## Project Overview
This repository brings together a Netflix-inspired streaming web app and an AWS infrastructure automation setup. The goal is to showcase a modern frontend experience while also demonstrating how DevOps practices can provision and manage the environment needed to run the application.

The project is split into three main parts:

- [Application-Code](Application-Code): React + TypeScript frontend that mimics the Netflix browsing and watching experience.
- [Terraform](Terraform): infrastructure-as-code definitions for AWS networking, IAM, and EC2 resources.
- [bootstrap](bootstrap): Terraform bootstrap configuration for remote state storage and GitHub Actions integration.

## What the App Does
The application in [Application-Code](Application-Code) is a polished Netflix-style clone built with React, Vite, Material UI, Redux Toolkit, Framer Motion, and Video.js. It includes:

- a cinematic hero section and dynamic movie banners
- genre-based browsing and content discovery
- hover previews and portal-based video cards
- detail modal with metadata and similar content suggestions
- infinite scroll for large result sets
- a dedicated watch page with custom player controls and seek bar
- TMDB-driven movie and TV data for realistic content

This makes it a strong frontend showcase for building interactive media experiences with reusable components, portal patterns, and motion-based UI.

## DevOps and Infrastructure
The infrastructure layer in [Terraform](Terraform) and [bootstrap](bootstrap) is designed for AWS deployment automation. It provisions:

- a custom VPC and public subnets
- internet gateway and route tables
- security groups for EC2 access
- IAM roles and instance profiles
- EC2 instances for Jenkins, monitoring, and Kubernetes nodes
- S3 remote state storage and DynamoDB state locking
- GitHub OIDC trust for Terraform automation in GitHub Actions

This gives the project a realistic cloud foundation beyond just the UI, showing how an application can be deployed and managed in a real DevOps workflow.

## Tech Stack
### Frontend
- React 18
- TypeScript
- Vite
- Material UI
- Redux Toolkit + RTK Query
- Framer Motion
- react-router-dom
- react-slick and Video.js

### Infrastructure
- Terraform
- AWS provider
- S3 + DynamoDB for Terraform state
- IAM and OIDC for secure CI/CD access

## Folder Structure
- [Application-Code](Application-Code): frontend source code and app assets
- [Terraform](Terraform): AWS resource definitions
- [bootstrap](bootstrap): bootstrap resources for remote state and GitHub Actions auth
- [Project_Animation.gif](Project_Animation.gif): visual overview of the project

## How to Run
### Frontend
```bash
cd Application-Code
npm install
npm run dev
```

### Terraform
```bash
cd Terraform
terraform init
terraform plan
terraform apply
```

> Note: You will need AWS credentials and the required environment variables for Terraform, and the frontend app may require a TMDB API key for movie data.

## Summary
This project is a complete example of a modern web application paired with practical cloud infrastructure setup. It demonstrates both user-facing product development and deployment automation, making it a strong project for learning full-stack and DevOps concepts together.

