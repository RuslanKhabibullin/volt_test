# Posts API

## Post show

### GET api/v1/posts/:id
### Request

#### Headers

<pre></pre>

#### Route

<pre>GET api/v1/posts/32</pre>

### Response

#### Headers

<pre>Content-Type: application/json; charset=utf-8</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "data": {
    "id": "32",
    "type": "posts",
    "attributes": {
      "title": "Natus eos temporibus et.",
      "body": "Ipsam aliquid quo aperiam quaerat.",
      "published_at": "2017-10-09T12:25:33.930Z",
      "author_nickname": "Mathilde Mills III"
    }
  }
}</pre>
