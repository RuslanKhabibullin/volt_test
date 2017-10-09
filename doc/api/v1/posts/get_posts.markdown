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
      "id": "409",
      "type": "posts",
      "attributes": {
        "title": "Omnis velit et quasi.",
        "body": "Aut quam iure delectus modi enim.",
        "published_at": "2017-10-09T07:36:12.263Z",
        "author_nickname": "Lucie Bradtke DVM"
      }
    }
  ],
  "links": {
  }
}</pre>
