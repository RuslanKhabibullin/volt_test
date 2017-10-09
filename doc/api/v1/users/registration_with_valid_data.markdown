# Users API

## Registration with valid data

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

<pre>email=lilyan%40kodenesik.biz&password=123456&nickname=John</pre>

### Response

#### Headers

<pre>Content-Type: application/json; charset=utf-8</pre>

#### Status

<pre>201 Created</pre>

#### Body

<pre>{
  "data": {
    "id": "74",
    "type": "users",
    "attributes": {
      "email": "lilyan@kodenesik.biz",
      "nickname": "John"
    }
  }
}</pre>
