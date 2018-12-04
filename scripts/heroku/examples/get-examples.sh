#!/bin/bash

curl "https://snoflake-api.herokuapp.com/examples" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
