#!/bin/bash

curl "https://snoflake-api.herokuapp.com/group_comments/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "group_comment": {
      "content": "'"${CONTENT}"'"
    }
  }'
echo
