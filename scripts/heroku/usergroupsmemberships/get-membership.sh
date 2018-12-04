#!/bin/bash

curl "https://snoflake-api.herokuapp.com/user_groups_memberships/${ID}" \
  --include \
  --request GET \

echo
