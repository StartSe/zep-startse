#!/bin/bash

echo "Creating .env file from GitHub Secrets..."

secrets_json="$SECRETS"

echo "$secrets_json" | jq -r 'to_entries | .[] | "\(.key)=\(.value)"' > .env

echo ".env file created successfully!"