#!/bin/bash

curl "https://snoflake-api.herokuapp.com/group_comments" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "group_comment": {
      "content": "'"${CONTENT}"'",
      "group_id": "'"${GROUP}"'"
    }
  }'

echo
