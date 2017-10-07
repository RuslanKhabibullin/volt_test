# Comments API

## Get comments

### GET api/v1/posts/:post_id/comments?page=:page&amp;per_page=:per_page
### Request

#### Headers

<pre></pre>

#### Route

<pre>GET api/v1/posts/140/comments?page=1&amp;per_page=1</pre>

#### Query Parameters

<pre>page: 1
per_page: 1</pre>

### Response

#### Headers

<pre>Content-Type: application/json; charset=utf-8</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "data": [
    {
      "id": "5",
      "type": "comments",
      "attributes": {
        "body": "Et magni dicta eaque.",
        "published_at": "2017-10-07T22:30:22.632Z",
        "author_id": 275,
        "post_id": 140
      }
    }
  ],
  "links": {
  }
}</pre>
