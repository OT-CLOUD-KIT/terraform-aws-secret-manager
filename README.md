AWS Secret Manager Terraform module
======================================

Terraform module which creates Secret Manager Secrets on AWS.

These types of resources are supported:

Secret Manager

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


Example
------- 

``
$ terraform plan
``

var.secret_description
  Description for secret manager

  Enter a value: [- Description for secret manager -]

var.secret_name
  Name of secret manager

  Enter a value: [- opstree_secret -]

var.secret_string
  key-value input for secret manager

  Enter a value: [- { "key1": "value1", "key2": "value2" } -]

Refreshing Terraform state in-memory prior to plan...
The refreshed state will be used to calculate this plan, but will not be
persisted to local or remote state storage.


``
$ terraform apply
``

var.secret_description
  Description for secret manager

  Enter a value: [- Desciption for secret manager -]

var.secret_name
  Name of secret manager

  Enter a value: [- opstree_secret -]

var.secret_string
  key-value input for secret manager

  Enter a value: [- { "key1": "value1", "key2": "value2" } -]


An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
  + create

