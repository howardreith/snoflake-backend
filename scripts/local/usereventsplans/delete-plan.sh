#!/bin/bash
# Leave event

curl "http://localhost:4741/user_events_plans/${ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \

echo
