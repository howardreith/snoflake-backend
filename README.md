# S'Noflake API
Updated 12/4/2018

Here you will find information concerning how to interact with the API for the S'Noflake application. Examples are provided in the form of CURL scripts executed in a UNIX command line along with the expected responses on success.

### Creating a new user

```
curl "https://snoflake-api.herokuapp.com/sign-up" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "'"${EMAIL}"'",
      "password": "'"${PASSWORD}"'",
      "password_confirmation": "'"${PASSWORD}"'"
    }
  }'
```
$ EMAIL=sample@sample.com PASSWORD=sample sh sign-up.sh

```
HTTP/1.1 201 Created
Server: Cowboy
Date: Tue, 04 Dec 2018 19:55:46 GMT
Connection: keep-alive
Content-Type: application/json; charset=utf-8
Etag: W/"896ee3c844216dc50e0cc50f43ace52d"
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: d99588bb-2942-471e-8798-0f9eb3f8999d
X-Runtime: 0.179308
Vary: Origin
Transfer-Encoding: chunked
Via: 1.1 vegur

{"user":{"id":2,"email":"sample@sample.com"}}
```

### Sign In

```
curl "https://snoflake-api.herokuapp.com/sign-in" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "'"${EMAIL}"'",
      "password": "'"${PASSWORD}"'"
    }
  }'
```

$ EMAIL=sample@sample.com PASSWORD=sample sh sign-in.sh

```
HTTP/1.1 200 OK
Server: Cowboy
Date: Tue, 04 Dec 2018 19:57:32 GMT
Connection: keep-alive
Content-Type: application/json; charset=utf-8
Etag: W/"dbc328ef0253da129cb8e07a8b3f1abd"
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 7c8cc80b-e98a-4b69-a742-84aeb2355eba
X-Runtime: 0.141745
Vary: Origin
Transfer-Encoding: chunked
Via: 1.1 vegur


{"user":{"id":2,"email":"sample@sample.com","token":"BAhJIiU1MWRjNWY3ZWRiYmRmYzBkOTY2ZTg3ZGU4YmVlNGRlMwY6BkVG--688e5d773bd28d304b6047b293092455c3e1a38a"}}
```

### Sign Out

```
curl "https://snoflake-api.herokuapp.com/sign-out" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}"
```

$ TOKEN=BAhJIiU1MWRjNWY3ZWRiYmRmYzBkOTY2ZTg3ZGU4YmVlNGRlMwY6BkVG--688e5d773bd28d304b6047b293092455c3e1a38a sh sign-out.sh

```
HTTP/1.1 204 No Content
Server: Cowboy
Date: Tue, 04 Dec 2018 19:59:15 GMT
Content-Length: 0
Connection: keep-alive
Cache-Control: no-cache
X-Request-Id: fac7b530-8aa2-4864-b917-00c58dc52673
X-Runtime: 0.036943
Vary: Origin
Via: 1.1 vegur
```

### Change Password

```
curl "https://snoflake-api.herokuapp.com/change-password" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "passwords": {
      "old": "'"${OLDPW}"'",
      "new": "'"${NEWPW}"'"
    }
  }'
```

$ TOKEN=BAhJIiU5MGQ5NDM3NGZjOGU5NmM3YmQ3MDIzYTM1OGYwZTRlMgY6BkVG--d9ce9285036f76c5084cb51521aad66c4173c5db OLDPW=sample NEWPW=newsample sh change-password.sh

```
HTTP/1.1 204 No Content
Server: Cowboy
Date: Tue, 04 Dec 2018 20:49:40 GMT
Content-Length: 0
Connection: keep-alive
Cache-Control: no-cache
X-Request-Id: 57582d14-d50d-4c78-9ac2-b2360ea3b168
X-Runtime: 0.244738
Vary: Origin
Via: 1.1 vegur
```

## Note
Group and event interaction is designed such that all groups and events can be accessed via GET requests by any user, even someone who is not signed in. However, in order to create, update, or delete a group or event, you must be signed in and thus must have the token received in response to the Sign In action above. This token is included in the headers as you will observe below.

### Create Group
```
curl "https://snoflake-api.herokuapp.com/groups" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "group": {
      "name": "'"${NAME}"'",
      "description": "'"${DESCRIPTION}"'",
      "creator_id": "'"${CREATOR}"'"
    }
  }'
```

$ TOKEN=BAhJIiU5MGQ5NDM3NGZjOGU5NmM3YmQ3MDIzYTM1OGYwZTRlMgY6BkVG--d9ce9285036f76c5084cb51521aad66c4173c5db NAME="sample group" DESCRIPTION="Its so sample" CREATOR=1 sh create-group.sh

```
HTTP/1.1 201 Created
Server: Cowboy
Date: Tue, 04 Dec 2018 20:08:37 GMT
Connection: keep-alive
Content-Type: application/json; charset=utf-8
Etag: W/"53ad419d2f1c89241d3f805cc2d0da1b"
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 951d95f1-c670-449e-b9e3-f7565a37bfe7
X-Runtime: 0.090142
Vary: Origin
Transfer-Encoding: chunked
Via: 1.1 vegur

{"group":{"id":1,"name":"sample group","group_id":null,"description":"Its so sample","created_at":"2018-12-04T20:08:38.212Z","updated_at":"2018-12-04T20:08:38.212Z","creator_id":1}}
```

### Create Event

```
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
```
TOKEN=BAhJIiU5MGQ5NDM3NGZjOGU5NmM3YmQ3MDIzYTM1OGYwZTRlMgY6BkVG--d9ce9285036f76c5084cb51521aad66c4173c5db NAME="sample event" ADDRESS="sample event address" LOCATIONNAME="Sample Location" CREATOR=1 sh create-event.sh

```
HTTP/1.1 201 Created
Server: Cowboy
Date: Tue, 04 Dec 2018 20:38:12 GMT
Connection: keep-alive
Content-Type: application/json; charset=utf-8
Etag: W/"2e91f7fb44af390c4c0decc08b222cea"
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 4775a71e-703b-45a8-ba57-133a88611548
X-Runtime: 0.161790
Vary: Origin
Transfer-Encoding: chunked
Via: 1.1 vegur

{"event":{"id":1,"name":"sample event","location_address":"sample event address","location_name":"Sample Location","created_at":"2018-12-04T20:38:13.677Z","updated_at":"2018-12-04T20:38:13.677Z","creator_id":1}}
```

### Update Event

```
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
```

$ TOKEN=BAhJIiU5MGQ5NDM3NGZjOGU5NmM3YmQ3MDIzYTM1OGYwZTRlMgY6BkVG--d9ce9285036f76c5084cb51521aad66c4173c5db NAME="sample event" ADDRESS="revised event address" LOCATIONNAME="Revised Location" ID=1 sh update-event.sh

```
HTTP/1.1 200 OK
Server: Cowboy
Date: Tue, 04 Dec 2018 20:39:38 GMT
Connection: keep-alive
Content-Type: application/json; charset=utf-8
Etag: W/"88705581fbc2ff3a3553e4dee9b9a70e"
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 8bfdd9f0-1bbd-4263-9a40-d15224296147
X-Runtime: 0.028032
Vary: Origin
Transfer-Encoding: chunked
Via: 1.1 vegur

{"event":{"id":1,"name":"sample event","location_address":"revised event address","location_name":"Revised Location","created_at":"2018-12-04T20:38:13.677Z","updated_at":"2018-12-04T20:39:38.274Z","creator_id":1}}
```

### Delete Event

```
curl "https://snoflake-api.herokuapp.com/events/${ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
```

TOKEN=BAhJIiU5MGQ5NDM3NGZjOGU5NmM3YmQ3MDIzYTM1OGYwZTRlMgY6BkVG--d9ce9285036f76c5084cb51521aad66c4173c5db ID=1 sh delete-event.sh

```
HTTP/1.1 204 No Content
Server: Cowboy
Date: Tue, 04 Dec 2018 20:42:40 GMT
Content-Length: 0
Connection: keep-alive
Cache-Control: no-cache
X-Request-Id: 45c656d7-76ef-4807-b5e8-b5243b65c4b4
X-Runtime: 0.164048
Vary: Origin
Via: 1.1 vegur
```

### Join Event

Like groups, joining an event means creating a new "plan."

```
curl "https://snoflake-api.herokuapp.com/user_events_plans" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "user_events_plan": {
      "event_id": "'"${EVENT_ID}"'"
    }
  }'
```
$ TOKEN=BAhJIiU5MGQ5NDM3NGZjOGU5NmM3YmQ3MDIzYTM1OGYwZTRlMgY6BkVG--d9ce9285036f76c5084cb51521aad66c4173c5db EVENT_ID=2 sh create-plan.sh

```
HTTP/1.1 201 Created
Server: Cowboy
Date: Tue, 04 Dec 2018 20:44:52 GMT
Connection: keep-alive
Content-Type: application/json; charset=utf-8
Etag: W/"0d246213348b0dd9995d00d6ab8d7769"
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: c91c5d76-646d-4dd0-921a-9986a77da637
X-Runtime: 0.234495
Vary: Origin
Transfer-Encoding: chunked
Via: 1.1 vegur

{"user_events_plan":{"id":1,"created_at":"2018-12-04T20:44:53.468Z","updated_at":"2018-12-04T20:44:53.468Z","user":{"id":2,"email":"sample@sample.com"},"event":{"id":2,"name":"sample event","location_address":"sample event address","location_name":"Sample Location","created_at":"2018-12-04T20:44:17.747Z","updated_at":"2018-12-04T20:44:17.747Z","creator_id":1}}}
```

### Leave Event

Also like groups, leaving an event means deleting your "plan." Be sure to delete the ID of the plan, not the ID of the user or the event.

```
curl "https://snoflake-api.herokuapp.com/user_events_plans/${ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
```

$ TOKEN=BAhJIiU5MGQ5NDM3NGZjOGU5NmM3YmQ3MDIzYTM1OGYwZTRlMgY6BkVG--d9ce9285036f76c5084cb51521aad66c4173c5db ID=1 sh delete-plan.sh

```
HTTP/1.1 204 No Content
Server: Cowboy
Date: Tue, 04 Dec 2018 20:46:09 GMT
Content-Length: 0
Connection: keep-alive
Cache-Control: no-cache
X-Request-Id: 300e4e73-416b-484f-a92d-76b8868a6c1a
X-Runtime: 0.017279
Vary: Origin
Via: 1.1 vegur
```

### Get All Plans

This will return a list of all plans presently in the database.

```
curl "https://snoflake-api.herokuapp.com/user_events_plans" \
  --include \
  --request GET \
```

$ sh get-plans.sh

```
HTTP/1.1 200 OK
Server: Cowboy
Date: Tue, 04 Dec 2018 20:47:36 GMT
Connection: keep-alive
Content-Type: application/json; charset=utf-8
Etag: W/"a660dca38779c548fd93d1d5060281d2"
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: d0a7a267-ddd9-48ac-9de7-06efdbaf9d3b
X-Runtime: 0.010931
Vary: Origin
Transfer-Encoding: chunked
Via: 1.1 vegur

{"user_events_plans":[]}
```
