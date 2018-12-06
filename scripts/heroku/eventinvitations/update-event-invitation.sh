#!/bin/bash

curl "https://snoflake-api.herokuapp.com/event_invitations/${ID}" \
--include \
--request PATCH \
--header "Content-Type: application/json" \
--header "Authorization: Token token=${TOKEN}" \
--data '{
  "event_invitation": {
    "accepted": "'"${ACCEPTED}"'"
  }
}'
echo
