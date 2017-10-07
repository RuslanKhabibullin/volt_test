# Posts API

## Unauthorized user create post

### POST api/v1/posts

### Parameters

| Name | Description | Required | Scope |
|------|-------------|----------|-------|
| title | Post title | true |  |
| body | Post body | true |  |
| published_at | Published at datetime(default - current datetime) | false |  |

### Request

#### Headers

<pre></pre>

#### Route

<pre>POST api/v1/posts</pre>

#### Body

<pre>title=Error+eius+iusto+eum+temporibus.&body=Test</pre>

### Response

#### Headers

<pre>Content-Type: application/json; charset=utf-8</pre>

#### Status

<pre>401 Unauthorized</pre>

#### Body

<pre>{
  "error": "You need to sign in or sign up before continuing."
}</pre>
