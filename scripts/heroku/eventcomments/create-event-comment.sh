#!/bin/bash

curl "https://snoflake-api.herokuapp.com/event_comments" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "event_comment": {
      "content": "'"${CONTENT}"'",
      "event_id": "'"${EVENT}"'"
    }
  }'

echo
