# Posts API

## Post show

### GET api/v1/posts/:id
### Request

#### Headers

<pre></pre>

#### Route

<pre>GET api/v1/posts/84</pre>

### Response

#### Headers

<pre>Content-Type: application/json; charset=utf-8</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "data": {
    "id": "84",
    "type": "posts",
    "attributes": {
      "title": "Dolor qui ut rerum sit.",
      "body": "Accusantium natus similique recusandae pariatur ipsam.",
      "published_at": "2017-10-07T21:36:18.767Z",
      "author_nickname": "Mya Frami"
    }
  }
}</pre>
