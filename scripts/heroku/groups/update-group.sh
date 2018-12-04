#!/bin/bash

curl "https://snoflake-api.herokuapp.com/groups/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "group": {
      "name": "'"${NAME}"'",
      "description": "'"${DESCRIPTION}"'"
    }
  }'

echo
