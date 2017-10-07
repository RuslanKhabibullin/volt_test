# Posts API

## Post show

### GET api/v1/posts/:id
### Request

#### Headers

<pre></pre>

#### Route

<pre>GET api/v1/posts/143</pre>

### Response

#### Headers

<pre>Content-Type: application/json; charset=utf-8</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "data": {
    "id": "143",
    "type": "posts",
    "attributes": {
      "title": "Tempora ut illo et sit adipisci et voluptatum.",
      "body": "Porro sunt eligendi at nam est tempora.",
      "published_at": "2017-10-07T22:30:22.766Z",
      "author_nickname": "Mckenna Ferry"
    }
  }
}</pre>
