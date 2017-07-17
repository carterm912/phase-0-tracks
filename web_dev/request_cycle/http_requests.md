Some common HTTP status codes
403 -forbidden
404 -not found
200 -OK
500 – Internal Server Error
502 - bad gateway
503 - service temporarily unavailable - comcast's favorite number
504 gateway tim-out
304 - not modified


So GET requests a representaion of a specific resource. These requests don't have a a body so they cant pass on too much relavent info, but they are cached by the browser. They also expose their parameters to a user.

POST submits data to the identified resource to be processed. Unlike a GET, any of its requests has a body and thus can contain a lot more data. It can also result in the creation of a new resource or update an existing resource.