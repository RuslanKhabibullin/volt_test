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

<pre>title=Nihil+magni+delectus+inventore+odit+laboriosam+odio+voluptatum.&body=Test</pre>

### Response

#### Headers

<pre>Content-Type: application/json; charset=utf-8</pre>

#### Status

<pre>201 Created</pre>

#### Body

<pre>{
  "data": {
    "id": "30",
    "type": "posts",
    "attributes": {
      "title": "Nihil magni delectus inventore odit laboriosam odio voluptatum.",
      "body": "Test",
      "published_at": "2017-10-09T12:25:33.814Z",
      "author_nickname": "Lamar Padberg DDS"
    }
  }
}</pre>
