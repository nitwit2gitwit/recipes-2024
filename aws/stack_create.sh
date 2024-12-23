
#!/usr/bin/env bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

aws --region us-east-1 cloudformation create-stack \
  --stack-name n2g-recipes-2024-claude-apps-com \
  --template-body "file://${SCRIPT_DIR}/stack.yaml" \
  --capabilities CAPABILITY_IAM \
  --parameters \
    ParameterKey=HostedZoneName,ParameterValue=claude-apps.com \
    ParameterKey=HostedZoneId,ParameterValue=Z0033081161IG00XGJDLG \
    ParameterKey=Hostname,ParameterValue=n2g-recipes-2024 \
    ParameterKey=PriceClass,ParameterValue=PriceClass_All \
    ParameterKey=GitHubOrg,ParameterValue=nitwit2gitwit \
    ParameterKey=RepositoryName,ParameterValue=recipes-2024
