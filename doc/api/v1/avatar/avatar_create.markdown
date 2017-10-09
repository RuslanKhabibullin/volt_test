# Avatar API

## Avatar create

### POST api/v1/avatar

### Parameters

| Name | Description | Required | Scope |
|------|-------------|----------|-------|
| avatar | Avatar image(jpeg/png - less than 3MB) | true |  |

### Request

#### Headers

<pre></pre>

#### Route

<pre>POST api/v1/avatar</pre>

#### Body

<pre>------------XnJLe9ZIbbGUYtzPQJ16u1
Content-Disposition: form-data; name="avatar"; filename="avatar.png"
Content-Type: text/plain
Content-Length: 35534

[uploaded data]
------------XnJLe9ZIbbGUYtzPQJ16u1--</pre>

### Response

#### Headers

<pre>Content-Type: application/json; charset=utf-8</pre>

#### Status

<pre>201 Created</pre>

#### Body

<pre>{
  "url": "https://volt-part2.s3.amazonaws.com/uploads/user/avatar/340/dc6678f2-81b8-45fe-9281-cb07eddad5f9.png",
  "thumb": {
    "url": "https://volt-part2.s3.amazonaws.com/uploads/user/avatar/340/thumb_dc6678f2-81b8-45fe-9281-cb07eddad5f9.png"
  }
}</pre>
