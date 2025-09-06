secret_name        = "my-secret"
secret_description = "Secret for RDS MySQL DB"
used_for_service   = "RDS"

kms_key_id = "119bd441-337d-4dfe-bc7f-ffc228833a83"

recovery_window_in_days = 7

secret_string = {
  username = "admin"
  password = "MySecurePass123!"
  engine   = "mysql"
  host     = "database-1.cwtk466o4o6z.us-east-1.rds.amazonaws.com"
  port     = "3306"
  dbname   = "mydb"
}

enabled_rotation_secret  = false
rotation_lambda_arn      = null
automatically_after_days = 30


env = "dev"
owner = "opstree"
region = "us-east-1"
app = "otcloud-kit"
