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

<pre>title=Nulla+consequuntur+quia+dignissimos+quidem+quaerat+velit.&body=Test</pre>

### Response

#### Headers

<pre>Content-Type: application/json; charset=utf-8</pre>

#### Status

<pre>201 Created</pre>

#### Body

<pre>{
  "data": {
    "id": "82",
    "type": "posts",
    "attributes": {
      "title": "Nulla consequuntur quia dignissimos quidem quaerat velit.",
      "body": "Test",
      "published_at": "2017-10-07T21:36:18.049Z",
      "author_nickname": "Jaeden Smith"
    }
  }
}</pre>
