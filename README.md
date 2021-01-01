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
| Name | Description | Type | Default | Required | Depends-On|
|------|-------------|------|---------|----------|-----------|
| secretname | Name of secret manager | `string` || yes ||
|secretdescription|Description for secret manager|`string`||no||
|tags|Additional tags|`string`|`{}`|no||
|secret_string|key-value pair in JSON format|`string`||yes||
|kms_key_id|Specifies the ARN or Id of the AWS KMS customer master key|`string`||no|`enabled_rotation_secret`|
|rotation_lambda_arn|Specifies the ARN of the Lambda function that can rotate the secret|`string`||no|`enabled_rotation_secret`|
|enabled_rotation_secret|To enable/disable secrets rotation|`string`|`"false"`|no||


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
  kms_key_id = "xxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxxxxx"
  rotation_lambda_arn = "arn:aws:lambda:ap-south-1:xxxxxxxxxxx:function:LAMBDA_FUNC_NAME"
  enabled_rotation_secret = false
  }
```
