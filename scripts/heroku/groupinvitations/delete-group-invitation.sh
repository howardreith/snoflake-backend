#!/bin/bash

curl "https://snoflake-api.herokuapp.com/group_invitations/${ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \

echo
