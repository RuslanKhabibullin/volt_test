# Posts API

## Get wallpapers

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
      "id": "83",
      "type": "posts",
      "attributes": {
        "title": "Neque sed culpa consectetur accusamus.",
        "body": "Et quo voluptatibus ipsa est quis quaerat.",
        "published_at": "2017-10-07T21:36:18.721Z",
        "author_nickname": "Eliza Bode"
      }
    }
  ],
  "links": {
  }
}</pre>
