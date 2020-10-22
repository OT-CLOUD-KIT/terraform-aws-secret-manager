AWS Secret Manager Terraform module
======================================

Terraform module which creates Secret Manager Secrets on AWS.

These types of resources are supported:

[Secret Manager](https://aws.amazon.com/secrets-manager/)

Terraform versions
------------------

Terraform 0.13.


Tags
----
* Tags are assigned to resources with name variable as prefix.
* Additial tags can be assigned by tags variables as defined above.


Inputs
------
| Name | Description | Type | Default | Required |
|------|-------------|------|---------|----------|
| secretname | Name of secret manager | `string` | `"false"` | yes |
|secretdescription|Description for secret manager|`string`|`"false"`|no|
|tags|Additional tags|`string`|`"false"`|no|
|secret_string|key-value pair in JSON format|`string`|`"false"`|yes|

Output
------
| Name | Description |
|------|-------------|
| secret_name| Name of secret manager secret |


Usage
------- 
```
module "secret" {
  source = "../secret-manager/"
  secret_name = "name_of_secret"
  secret_description = "Description for secret manager"
  tags = {"key1": "value1"}
  secret_string =  { "secretkey1": "secretvalue1", "secretkey2": "secretvalue2"}
  }
```
