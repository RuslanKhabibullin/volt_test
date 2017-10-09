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
      "id": "31",
      "type": "posts",
      "attributes": {
        "title": "Maxime rem ipsam quas earum consectetur porro doloremque.",
        "body": "Neque molestias omnis et natus eum sequi itaque.",
        "published_at": "2017-10-09T12:25:33.888Z",
        "author_nickname": "Gloria Heidenreich"
      }
    }
  ],
  "links": {
  }
}</pre>
