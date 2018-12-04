#!/bin/bash

curl "https://snoflake-api.herokuapp.com/users/${ID}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "user": {
      "email": "'"${EMAIL}"'"
    }
  }'

echo
