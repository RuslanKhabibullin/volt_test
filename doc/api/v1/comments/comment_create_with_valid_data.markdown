# Comments API

## Comment create with valid data

### POST api/v1/posts/:post_id/comments

### Parameters

| Name | Description | Required | Scope |
|------|-------------|----------|-------|
| body | Comment body | true |  |
| published_at | Published at datetime(default - current datetime) | false |  |

### Request

#### Headers

<pre></pre>

#### Route

<pre>POST api/v1/posts/405/comments</pre>

#### Body

<pre>body=Test</pre>

### Response

#### Headers

<pre>Content-Type: application/json; charset=utf-8</pre>

#### Status

<pre>201 Created</pre>

#### Body

<pre>{
  "data": {
    "id": "48",
    "type": "comments",
    "attributes": {
      "body": "Test",
      "published_at": "2017-10-09T07:36:11.556Z",
      "author_id": 643,
      "post_id": 405
    }
  }
}</pre>
