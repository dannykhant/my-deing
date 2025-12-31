# Terraform

### Intro to IaC

- IaC is a tool which lets you define both cloud and on-prem resources in human-readable config files that you can version, reuse, and share
- Cloud infra components are API-driven
    - Able to scale up & down
    - Easily customizable depending on needs
    - Pay-as-you-go
    - Easily deploy & manage resources across multiple regions
    - Manual effort increases when demand increases
    - Inconsistencies due to config drift
    - Scaling becomes complex over time
- IaC allows to manage infra with config files rather than through GUI
- Core idea: Write code to define the desired state of your infra
    - Consistent across different environment
    - Automating the process entirely - Save times & efforts
    - Version control
- IaC tools
    - Cloud specific
        - AWS CloudFormation
        - AWS Elastic Beanstalk
        - GCP Cloud Deployment Manager
        - Azure Resource Manager Templates
        - Azure Blueprints
    - Cloud agnostic
        - Terraform
        - Pulumi
        - OpenTofu

### Terraform IaC

- Uses HCL (HashiCorp Configuration Language)
- Follows declarative approach
- Automates infra lifecycle management
- Version control & reusable
- How does it work?
    - Config files (.tf) ⇒ Provider ⇒ Cloud provider API
- Workflow
    - Write
        - Define infra in the config files (.tf)
    - Plan
        - Review the changes Terraform will make to infra
    - Apply
        - Terra provisions the infra and update the state file

### Core concepts

- Providers
- Resources
- HCL language features
- State management
- Variables & Outputs
- Modules

### Providers

- Plugin used to interact with APIs
- Terraform registry has all the providers
- To init the project
    - `terraform init`

### Resources

- Actual components of the infrastructure
- To destroy resources
    - `terraform destroy`
- Resource name must be unique for each resource type
- To store plan
    - `terraform plan -out=./filename`
- Meta arguments
    - Special arguments that can be used with every resource
        - depends_on
        - count
        - for_each
        - provider
        - lifecycle

### Terraform State

- State file (terraform.tfstate)
    - Sync with the current state of the infra
- terraform apply
    - create infra
    - write to the state file
- Declarative nature
- Stored in - terraform.tfstate
- To destroy specific resource
    - `terraform destroy --target=<type>.<name>`
- State Drift
    - It happens when actual infra is not same as terraform state
    - `terraform refresh`
        - To make the tfstate same as the infra
    - Best practice is to use: terraform plan/apply
- Backend Configuration
    - Sensitive data is visible in state file
    - Types
        - Local backend (default)
        - Remote backend

### Variables & Outputs

- Optimization
    - Variables & outputs
    - Modules
- Variable types
    - Input variables
    - Output variables
    - Local variables
- Customizing terraform configuration
    - To give value to input variables
        - -var or -var-file CLI flag
        - terraform.tfvars file
        - *.auto.tfvars file
        - TF_VAR_<name> - Env variable
    - Input variable precedence
        - Top → highest
        - Bottom → lowest

### Modules

- All .tf files in a working directory
- Self-contained package for multiple resources that are used together
- Types
    - Root module (default)
    - Child module
    - Published module
        - Available on Terraform registry
- Why to use modules?
    - Good practice!
    - It simplifies complex infra management
    - It is reusable
    - It ensures consistency
    - It enables collaboration

### Project

- To associate resources - `depends_on`
- To run script when initializing - `user_data`
- To trigger recreation when there is changes - `user_data_replace_on_change`