# Reports API

## Post create with valid data

### POST api/v1/reports/by_author

### Parameters

| Name | Description | Required | Scope |
|------|-------------|----------|-------|
| email | Email | true |  |
| start_date | Start date(example: 2017-01-10) | true |  |
| end_date | End date | true |  |

### Request

#### Headers

<pre></pre>

#### Route

<pre>POST api/v1/reports/by_author</pre>

### Response

#### Headers

<pre>Content-Type: application/json; charset=utf-8</pre>

#### Status

<pre>201 Created</pre>

#### Body

<pre>{
  "message": "Report generation started"
}</pre>
