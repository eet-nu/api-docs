---
title: Account
---

## Introduction

The Account API enables you to test authentication and retrieve information about the logged in user.

## Authentication

The Account API uses [HTTP basic authentication][HTTP Auth] to request data. It is easy to use and supported by the majority of web clients.

To test authentication from the command line, try the following:

~~~
$ curl -I https://api.eet.nu/account
HTTP/1.1 401 Unauthorized
Status: 401 Unauthorized

$ curl -I -u USERNAME:PASSWORD https://api.eet.nu/account
HTTP/1.1 200 OK
Status: 200 OK
~~~

If the username and password are incorrect or not provided, the API returns a `401 Unauthorized` status header. If authentication succeeds, a `200 OK` status will be returned and the user's data will be returned as JSON.

### Example JSON response:

```javascript
{
  id: 1,
  name: "Tom-Eric",
  avatar: {
    standard: "https://assets-eet-nu.s3.amazonaws.com/avatars/1",
    small: "https://assets-eet-nu.s3.amazonaws.com/avatars/1",
    tiny: "https://assets-eet-nu.s3.amazonaws.com/avatars/1"
  },
  resources: {
    self: "https://api.eet.nu/users/1",
    favourites: "https://api.eet.nu/users/1/favourites",
    reviews: "https://api.eet.nu/users/1/reviews",
    following: "https://api.eet.nu/users/1/following",
    followers: "https://api.eet.nu/users/1/followers"
  },
  counters: {
    followers: 48,
    following: 37,
    favourites: 32,
    reviews: 134,
    logins: 873,
    failed_logins: 0
  },
  email: "tomeric@eet.nu",
  activated_at: "2008-11-29T01:22:13Z",
  created_at: "2008-11-29T01:22:13Z",
  updated_at: "2012-02-03T15:02:55Z",
  connections: [
    {
      provider: "facebook",
      uid: "100000682893240"
    },
    {
      provider: "hyves",
      uid: "00788fe6b953252e67c339b2058fb976fa"
    },
    {
      provider: "twitter",
      uid: "14486918"
    }
  ],
}
```

[HTTP Auth]: https://en.wikipedia.org/wiki/Basic_access_authentication "Basic HTTP Authentication"
