1. Pass by CLI
    ```bash
    tf plan --var="filename=via_cli"
    ```

2. Pass by `terraform.tfvars` file

3. Pass by `*.auto.tfvars` file

4. Pass by env-var
    ```bash
    export TF_VAR_filename="via_env_var"
    ```