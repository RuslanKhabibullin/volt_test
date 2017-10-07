# Posts API

## Get posts

### GET api/v1/posts?page=:page&amp;per_page=:per_page
### Request

#### Headers

<pre></pre>

#### Route

<pre>GET api/v1/posts?page=1&amp;per_page=1</pre>

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
      "id": "142",
      "type": "posts",
      "attributes": {
        "title": "Et ipsa itaque distinctio eum sed quos enim.",
        "body": "Quia in necessitatibus quo minus voluptatem sequi culpa cum.",
        "published_at": "2017-10-07T22:30:22.737Z",
        "author_nickname": "Dr. Fiona Moen"
      }
    }
  ],
  "links": {
  }
}</pre>
