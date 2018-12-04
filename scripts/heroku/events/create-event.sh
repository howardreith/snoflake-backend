#!/bin/bash

curl "https://snoflake-api.herokuapp.com/events" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "event": {
      "name": "'"${NAME}"'",
      "location_address": "'"${ADDRESS}"'",
      "location_name": "'"${LOCATIONNAME}"'",
      "creator_id": "'"${CREATOR}"'"
    }
  }'

echo
