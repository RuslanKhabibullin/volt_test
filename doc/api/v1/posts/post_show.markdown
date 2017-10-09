# Posts API

## Post show

### GET api/v1/posts/:id
### Request

#### Headers

<pre></pre>

#### Route

<pre>GET api/v1/posts/200</pre>

### Response

#### Headers

<pre>Content-Type: application/json; charset=utf-8</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "data": {
    "id": "200",
    "type": "posts",
    "attributes": {
      "title": "Doloremque sequi sint qui eum delectus fugiat.",
      "body": "Architecto dolores perferendis quia facilis.",
      "published_at": "2017-10-09T20:27:12.590Z",
      "author_nickname": "Nico Trantow Jr."
    }
  }
}</pre>
