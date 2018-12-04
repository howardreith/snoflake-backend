#!/bin/bash

curl "https://snoflake-api.herokuapp.com/users/${ID}" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
