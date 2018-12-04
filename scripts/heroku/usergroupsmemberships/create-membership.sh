#!/bin/bash
# Join Group

curl "https://snoflake-api.herokuapp.com/user_groups_memberships" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "user_groups_membership": {
      "group_id": "'"${GROUP_ID}"'"
    }
  }'

echo
