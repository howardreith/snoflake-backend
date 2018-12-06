#!/bin/bash

curl "http://localhost:4741/event_comments/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "event_comment": {
      "content": "'"${CONTENT}"'"
    }
  }'
echo
