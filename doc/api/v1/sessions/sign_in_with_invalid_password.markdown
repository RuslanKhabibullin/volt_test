# Sessions API

## Sign in with invalid password

### POST api/v1/sessions.json

### Parameters

| Name | Description | Required | Scope |
|------|-------------|----------|-------|
| email | Email | true |  |
| password | Password | true |  |

### Request

#### Headers

<pre>Accept: application/json</pre>

#### Route

<pre>POST api/v1/sessions.json</pre>

#### Body

<pre>email=jaquelin.hintz%40beckerlangosh.io&password=</pre>

### Response

#### Headers

<pre>Content-Type: application/json</pre>

#### Status

<pre>401 Unauthorized</pre>

