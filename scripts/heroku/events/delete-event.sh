#!/bin/bash

curl "https://snoflake-api.herokuapp.com/events/${ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \

echo
