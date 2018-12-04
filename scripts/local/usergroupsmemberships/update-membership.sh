#!/bin/bash

curl "http://localhost:4741/user_groups_memberships/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "user_groups_membership": {
      "user_id": "'"${USER_ID}"'",
      "group_id": "'"${GROUP_ID}"'"
    }
  }'

echo
