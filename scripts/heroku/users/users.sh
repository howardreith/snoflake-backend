#!/bin/bash

curl "https://snoflake-api.herokuapp.com/users" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
