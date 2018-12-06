#!/bin/bash

curl "http://localhost:4741/events" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "event": {
      "name": "'"${NAME}"'",
      "location_address": "'"${ADDRESS}"'",
      "location_name": "'"${LOCATIONNAME}"'",
      "creator_id": "'"${CREATOR}"'",
      "group_id": "'"${GROUP}"'"
    }
  }'

echo
