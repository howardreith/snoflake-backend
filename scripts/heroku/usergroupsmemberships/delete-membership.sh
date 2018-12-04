#!/bin/bash
# Leave Group

curl "https://snoflake-api.herokuapp.com/user_groups_memberships/${ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \

echo
