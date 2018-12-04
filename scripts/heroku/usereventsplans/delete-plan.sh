#!/bin/bash
# Leave event

curl "https://snoflake-api.herokuapp.com/user_events_plans/${ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \

echo
