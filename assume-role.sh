### Assume a role that is allowed to launch instance and prep variables for packer
aws sts assume-role --role-arn "$assume_role_arn" --role-session-name "$role_session_name" > assume-role-output.txt
export AWS_ACCESS_KEY_ID="$(cat assume-role-output.txt | jq -c '.Credentials.AccessKeyId' | tr -d '"' | tr -d ' ')"
export AWS_SECRET_ACCESS_KEY="$(cat assume-role-output.txt | jq -c '.Credentials.SecretAccessKey' | tr -d '"' | tr -d ' ')"
export AWS_SESSION_TOKEN="$(cat assume-role-output.txt | jq -c '.Credentials.SessionToken' | tr -d '"' | tr -d ' ')"
