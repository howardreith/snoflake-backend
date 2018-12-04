#!/bin/bash

curl "https://snoflake-api.herokuapp.com/events/${ID}" \
  --include \
  --request GET \

echo
