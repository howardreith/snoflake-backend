#!/bin/bash

curl "http://localhost:4741/group_comments/${ID}" \
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
