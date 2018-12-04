#!/bin/bash

curl "http://localhost:4741/user_groups_memberships/${ID}" \
  --include \
  --request GET \

echo
