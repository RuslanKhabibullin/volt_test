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

<pre>Content-Type: application/json</pre>

#### Status

<pre>200 OK</pre>

