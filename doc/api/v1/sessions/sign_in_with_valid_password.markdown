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

<pre>email=merlin.grimes%40wintheisercasper.org&password=123456</pre>

### Response

#### Headers

<pre>Content-Type: application/json; charset=utf-8</pre>

#### Status

<pre>201 Created</pre>

#### Body

<pre>{
  "data": {
    "id": "1507580832",
    "type": "tokens",
    "attributes": {
      "access_token": "eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOjM0OSwiaWF0IjoxNTA3NTgwODMyLCJleHAiOjE1MDc2MDI0MzJ9.PwET4Fr5s1yTPe-XKlVc7qEx4sTBPgwCybipYFSFwKk",
      "token_type": "Bearer"
    }
  }
}</pre>
