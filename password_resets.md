---
title: Password resets
permalink: /password_resets/
---

## Introduction

The Account API enables you to make a password reset request for a user.

## Password reset

You can create a request for password reset by issuing a http `POST` to the following url:

    https://api.eet.nu/password_resets/:email

If the email is not found or incorrect, the API returns a `404 Not Found` status header. If the password request has been created, a `201 Created` status will be returned with an empty response body.
:email is case-insensitive.