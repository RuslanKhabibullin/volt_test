# Sessions API

## Sign in with valid password

### POST api/v1/sessions.json

### Parameters

| Name | Description | Required | Scope |
|------|-------------|----------|-------|
| email | Email | true |  |
| password | Password | true |  |

### Request

#### Headers

<pre>Accept: application/json</pre>

#### Route

<pre>POST api/v1/sessions.json</pre>

#### Body

<pre>email=rashawn.schimmel%40mante.biz&password=123456</pre>

### Response

#### Headers

<pre>Content-Type: application/json; charset=utf-8</pre>

#### Status

<pre>201 Created</pre>

#### Body

<pre>{
  "data": {
    "id": "1507412178",
    "type": "tokens",
    "attributes": {
      "access_token": "eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOjE3OCwiaWF0IjoxNTA3NDEyMTc4LCJleHAiOjE1MDc0MzM3Nzh9.QfM7Eg9HrjHqv7uDLa94ceUllrXdxgL6YBilk3iErN4",
      "token_type": "Bearer"
    }
  }
}</pre>
