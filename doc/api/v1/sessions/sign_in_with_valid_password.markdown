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

<pre>email=emil.predovic%40littel.co&password=123456</pre>

### Response

#### Headers

<pre>Content-Type: application/json; charset=utf-8</pre>

#### Status

<pre>201 Created</pre>

#### Body

<pre>{
  "data": {
    "id": "1507415422",
    "type": "tokens",
    "attributes": {
      "access_token": "eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOjI4MCwiaWF0IjoxNTA3NDE1NDIyLCJleHAiOjE1MDc0MzcwMjJ9.9aaEzx6lvKzBpHxL6tf_P-53e5R00Sf5fiHN9uTOwow",
      "token_type": "Bearer"
    }
  }
}</pre>
