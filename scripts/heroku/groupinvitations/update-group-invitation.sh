#!/bin/bash

curl "https://snoflake-api.herokuapp.com/group_invitations/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "group_invitation": {
      "accepted": "'"${ACCEPTED}"'",
      "message": "'"${MESSAGE}"'"
    }
  }'
echo
