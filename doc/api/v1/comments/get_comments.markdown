# Comments API

## Get comments

### GET api/v1/posts/:post_id/comments?page=:page&amp;per_page=:per_page
### Request

#### Headers

<pre></pre>

#### Route

<pre>GET api/v1/posts/407/comments?page=1&amp;per_page=1</pre>

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
      "id": "49",
      "type": "comments",
      "attributes": {
        "body": "Illum mollitia provident quia architecto vel cupiditate.",
        "published_at": "2017-10-09T07:36:12.151Z",
        "author_id": 645,
        "post_id": 407
      }
    }
  ],
  "links": {
  }
}</pre>
