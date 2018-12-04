#!/bin/bash

curl "http://localhost:4741/user_events_plans/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "user_events_plan": {
      "user_id": "'"${USER_ID}"'",
      "event_id": "'"${EVENT_ID}"'"
    }
  }'

echo
