#!/bin/bash

curl "https://snoflake-api.herokuapp.com/group_invitations" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "group_invitation": {
      "message": "'"${MESSAGE}"'",
      "group_id": "'"${GROUP}"'",
      "invited_id": "'"${INVITED}"'"
    }
  }'

echo
