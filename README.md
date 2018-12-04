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
