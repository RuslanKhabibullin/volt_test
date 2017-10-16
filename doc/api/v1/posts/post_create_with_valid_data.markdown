# Posts API

## Post create with valid data

### POST api/v1/posts

### Parameters

| Name | Description | Required | Scope |
|------|-------------|----------|-------|
| title | Post title | true |  |
| body | Post body | true |  |
| published_at | Published at datetime(default - current datetime) | false |  |

### Request

#### Headers

<pre></pre>

#### Route

<pre>POST api/v1/posts</pre>

#### Body

<pre>title=Quia+blanditiis+excepturi+ducimus+ipsam+deserunt+nihil.&body=Test</pre>

### Response

#### Headers

<pre>Content-Type: application/json; charset=utf-8</pre>

#### Status

<pre>201 Created</pre>

#### Body

<pre>{
  "data": {
    "id": "198",
    "type": "posts",
    "attributes": {
      "title": "Quia blanditiis excepturi ducimus ipsam deserunt nihil.",
      "body": "Test",
      "published_at": "2017-10-09T20:27:12.469Z",
      "author_nickname": "Shany Ratke"
    }
  }
}</pre>
