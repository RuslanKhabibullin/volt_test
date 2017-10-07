# Users API

## Registration with invalid data

### POST api/v1/users

### Parameters

| Name | Description | Required | Scope |
|------|-------------|----------|-------|
| email | Email | true |  |
| password | Password | true |  |
| nickname | Nickname | true |  |

### Request

#### Headers

<pre></pre>

#### Route

<pre>POST api/v1/users</pre>

#### Body

<pre>email=damian.lind%40fisher.co&password=123456</pre>

### Response

#### Headers

<pre>Content-Type: application/json; charset=utf-8</pre>

#### Status

<pre>422 Unprocessable Entity</pre>

#### Body

<pre>{
  "errors": [
    "Nickname can't be blank"
  ]
}</pre>
