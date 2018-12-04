#!/bin/bash
# Join event

curl "https://snoflake-api.herokuapp.com/user_events_plans" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "user_events_plan": {
      "event_id": "'"${EVENT_ID}"'"
    }
  }'

echo
