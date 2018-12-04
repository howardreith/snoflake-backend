#!/bin/bash

curl "https://snoflake-api.herokuapp.com/events/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "event": {
      "name": "'"${NAME}"'",
      "location_address": "'"${ADDRESS}"'",
      "location_name": "'"${LOCATIONNAME}"'"
    }
  }'

echo
