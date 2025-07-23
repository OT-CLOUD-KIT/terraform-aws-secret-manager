
# Terraform AWS Secrets Manager

A Terraform module to securely create and manage AWS Secrets Manager secrets with support for versioning, optional automatic rotation, KMS encryption, and tagging following best practices and naming conventions.

---

## Architecture



> - This module supports secrets for:
> - RDS (both single instance and cluster)
> - DocumentDB
> - Any custom application (API keys, passwords, etc.)
> - Optional Lambda-based rotation

---

## Providers

| Name                                              | Version  |
|---------------------------------------------------|----------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.82.2   |
| <a name="terraform_module"></a> [Terraform](Terraform\_module) | >= 1.12.1|

---

## Usage

```hcl
module "secret" {
  source = "OT-CLOUD-KIT/terraform-aws-secrets-manager"

  secret_name        = "rds-secret"
  secret_description = "Secret for RDS MySQL"
  used_for_service   = "rds"
  kms_key_id         = "arn:aws:kms:us-east-1:123456789012:key/abcd-efgh-1234"

  secret_string = {
    username = "admin"
    password = "SuperSecure123!"
    engine   = "mysql"
    host     = "rds.example.us-east-1.rds.amazonaws.com"
    port     = 3306
    dbname   = "mydb"
  }

  enabled_rotation_secret  = false
  rotation_lambda_arn      = null
  automatically_after_days = 30
  recovery_window_in_days  = 7

  bu      = "ot"
  program = "cloud"
  app     = "orders"
  env     = "dev"
  team    = "backend"
  region  = "us-east-1"
}
```


---

## Resources

| Name | Type |
|------|------|
| [aws_secretsmanager_secret](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret) | resource |
| [aws_secretsmanager_secret_version](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret_version) | resource |
| [aws_secretsmanager_secret_rotation](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret_rotation) | resource |

---

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_secret_name"></a> [secret\_name](#input\_secret\_name) | Short name of the secret (will be prefixed) | `string` | n/a | yes |
| <a name="input_secret_description"></a> [secret\_description](#input\_secret\_description) | Description of the secret | `string` | `""` | no |
| <a name="input_used_for_service"></a> [used\_for\_service](#input\_used\_for\_service) | The service this secret is used for (e.g., `rds`, `docdb`) | `string` | `""` | no |
| <a name="input_kms_key_id"></a> [kms\_key\_id](#input\_kms\_key\_id) | ARN of the KMS key used for encryption | `string` | `""` | yes |
| <a name="input_secret_string"></a> [secret\_string](#input\_secret\_string) | Secret content (key-value) to be stored | `map(any)` | n/a | yes |
| <a name="input_enabled_rotation_secret"></a> [enabled\_rotation\_secret](#input\_enabled\_rotation\_secret) | Enable automatic rotation | `bool` | `false` | no |
| <a name="input_rotation_lambda_arn"></a> [rotation\_lambda\_arn](#input\_rotation\_lambda\_arn) | Lambda ARN for rotation (required if rotation enabled) | `string` | `null` | no |
| <a name="input_automatically_after_days"></a> [automatically\_after\_days](#input\_automatically\_after\_days) | Rotation interval (in days) | `number` | `30` | no |
| <a name="input_recovery_window_in_days"></a> [recovery\_window\_in\_days](#input\_recovery\_window\_in\_days) | Recovery window before deletion (in days) | `number` | `7` | no |

___


## Outputs

| Name | Description |
|------|-------------|
| <a name="output_secret_name"></a> [secret\_name](#output\_secret\_name) | The name of the created secret |
| <a name="output_secret_arn"></a> [secret\_arn](#output\_secret\_arn) | The ARN of the created secret |
| <a name="output_used_for_service"></a> [used\_for\_service](#output\_used\_for\_service) | The service this secret is used for |




---


## Contributors

- [Piyush Upadhyay](https://github.com/piiiyuushh)
- [Nikita Joshi](https://github.com/jnikita19)

