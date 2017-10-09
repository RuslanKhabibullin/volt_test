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

<pre>email=abbey%40johns.com&password=123456</pre>

### Response

#### Headers

<pre>Content-Type: application/json; charset=utf-8</pre>

#### Status

<pre>201 Created</pre>

#### Body

<pre>{
  "data": {
    "id": "1507534572",
    "type": "tokens",
    "attributes": {
      "access_token": "eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOjY1MSwiaWF0IjoxNTA3NTM0NTcyLCJleHAiOjE1MDc1NTYxNzJ9.zYrEfhVwXbx2IGDT3Y6rH-c2PqzX9J_UwApRAUOuSck",
      "token_type": "Bearer"
    }
  }
}</pre>
