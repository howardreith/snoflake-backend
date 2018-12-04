#!/bin/bash
# Leave Group

curl "http://localhost:4741/user_groups_memberships/${ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \

echo
