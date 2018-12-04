#!/bin/bash

curl "https://snoflake-api.herokuapp.com/user_events_plans/${ID}" \
  --include \
  --request GET \

echo
