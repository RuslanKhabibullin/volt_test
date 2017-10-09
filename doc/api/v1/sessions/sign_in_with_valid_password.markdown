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

<pre>email=flavio%40frami.biz&password=123456</pre>

### Response

#### Headers

<pre>Content-Type: application/json; charset=utf-8</pre>

#### Status

<pre>201 Created</pre>

#### Body

<pre>{
  "data": {
    "id": "1507551934",
    "type": "tokens",
    "attributes": {
      "access_token": "eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOjcyLCJpYXQiOjE1MDc1NTE5MzQsImV4cCI6MTUwNzU3MzUzNH0.Jr4lXXp7Elh1yjHoK28UCM0HASW69yV3uvzMQLc_cK4",
      "token_type": "Bearer"
    }
  }
}</pre>
