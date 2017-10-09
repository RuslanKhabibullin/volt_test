# Avatar API

## Get current user avatar

### GET api/v1/avatar
### Request

#### Headers

<pre></pre>

#### Route

<pre>GET api/v1/avatar</pre>

### Response

#### Headers

<pre>Content-Type: application/json; charset=utf-8</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "url": "https://volt-part2.s3.amazonaws.com/uploads/user/avatar/63/bf7c6b3e-cc32-45a9-8701-5ad5ccaa960a.png",
  "thumb": {
    "url": "https://volt-part2.s3.amazonaws.com/uploads/user/avatar/63/thumb_bf7c6b3e-cc32-45a9-8701-5ad5ccaa960a.png"
  }
}</pre>
