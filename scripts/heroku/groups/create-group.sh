#!/bin/bash

curl "https://snoflake-api.herokuapp.com/groups" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "group": {
      "name": "'"${NAME}"'",
      "description": "'"${DESCRIPTION}"'",
      "creator_id": "'"${CREATOR}"'"
    }
  }'

echo
