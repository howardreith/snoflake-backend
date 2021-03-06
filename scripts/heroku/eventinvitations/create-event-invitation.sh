#!/bin/bash

curl "https://snoflake-api.herokuapp.com/event_invitations" \
--include \
--request POST \
--header "Content-Type: application/json" \
--header "Authorization: Token token=${TOKEN}" \
--data '{
  "event_invitation": {
    "message": "'"${MESSAGE}"'",
    "group_inviter_id": "'"${GROUP}"'",
    "invited_id": "'"${INVITED}"'",
    "event_id": "'"${EVENT}"'"
  }
}'

echo
