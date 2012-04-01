---
title: Eet.nu API
---

## Overview

Our API gives you access to most of our data. The Eet.nu API is organized around [REST][REST]. We aim to have simple, predictable [URLs][URL] for our resources. We use built-in [HTTP][HTTP] features like [HTTP Verbs][HTTP Verbs], [HTTP Authentication][HTTP Auth] and return [JSON][JSON] in all our responses.

## Attribution

We require you to attribute Eet.nu when using our data. 

If you are creating a web application, we require a link to Eet.nu on every page that displays our data. These links must be normal links, and they may not include the `rel="nofollow"` attribute.

If you are creating a mobile or desktop application powered primarely by Eet.nu, we require the Eet.nu logo to be prominently displayed on your application's splash or default screen.

If you use our information in some sections of your application (for example to show reviews of a venue), you are required to attribute us on that screen. This can be done by displaying the Eet.nu logo or with text indicating that the data is powered by Eet.nu.

## Versioning

Currently only 1 version of our API exists, that version is **1**. In the future, we might introduce features that are not backwards compatible. If this happens, we will release a new version, but support our older version.

If you want to use a specific version of our API, you can use the [Accept header] [Accept]. For example, to request information with version 1 of our API from the command line, try the following:

~~~
$ curl -I -H "Accept: application/json, application/vnd.eet-nu;ver=1" http://api.eet.nu/venues
HTTP/1.1 200 OK
Status: 200 OK
Content-Type: application/json; charset=utf-8
~~~

Not passing a version will return the newest version of the API.

## Responses

All API responses are [JSON][JSON] and we support [JSONP][JSONP] with the `callback` query parameter.

Our API responses are cached and use [HTTP Caching][HTTP Caching] headers like `Last-Modified`, `ETag` and `Cache-Control` and respond to headers like `If-None-Match` and `If-Modified-Since` to control caching.

~~~
$ curl -I http://api.eet.nu/venues
HTTP/1.1 200 OK
Status: 200 OK
Content-Type: application/json; charset=utf-8
ETag: "a0bceffbfe7d6f4ebe92ef20dd4b8e29"
Last-Modified: Sun, 05 Feb 2012 13:06:32 GMT
Cache-Control: public, max-age=0
~~~

[REST]: http://en.wikipedia.org/wiki/Representational_State_Transfer "Representational state transfer (REST)"
[URL]: http://en.wikipedia.org/wiki/Uniform_resource_locator "Uniform resource locator (URL)"
[HTTP]: http://en.wikipedia.org/wiki/Hypertext_Transfer_Protocol "Hypertext Transfer Protocol (HTTP)"
[HTTP Verbs]: http://en.wikipedia.org/wiki/Hypertext_Transfer_Protocol#Request_methods "HTTP Request methods"
[HTTP Auth]: http://en.wikipedia.org/wiki/Basic_access_authentication "Basic HTTP Authentication"
[HTTP Caching]: http://www.w3.org/Protocols/rfc2616/rfc2616-sec13.html "Caching in HTTP"
[JSON]: http://en.wikipedia.org/wiki/JSON "Javascript Object Notation (JSON)"
[JSONP]: http://en.wikipedia.org/wiki/JSONP "JSON with padding (JSONP)"
[Accept]: http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html "Accept request-header"
