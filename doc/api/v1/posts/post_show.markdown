# Posts API

## Post show

### GET api/v1/posts/:id
### Request

#### Headers

<pre></pre>

#### Route

<pre>GET api/v1/posts/410</pre>

### Response

#### Headers

<pre>Content-Type: application/json; charset=utf-8</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "data": {
    "id": "410",
    "type": "posts",
    "attributes": {
      "title": "Laboriosam aperiam nam cumque aut voluptatum.",
      "body": "Beatae deserunt ex similique sunt assumenda sit eaque.",
      "published_at": "2017-10-09T07:36:12.295Z",
      "author_nickname": "Torey Smith Jr."
    }
  }
}</pre>
