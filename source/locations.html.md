---
title: Locations
---

## Introduction

The Locations API enables you to retrieve a list of locations that contain restaurants.

## Location details

If you know the **id** of a location, you can request it's information.

To retrieve information about a single location use the following URL format:

    https://api.eet.nu/locations/:id

## Location lists

You can get a list of all locations by requesting the following URL:

    https://api.eet.nu/locations

There are currently 3 types of locations, that can be retrieved by adding the `type=:type` parameter:

 * Country -- `https://api.eet.nu/locations?type=Country`
 * Region -- `https://api.eet.nu/locations?type=Region`
 * City -- `https://api.eet.nu/locations?type=City`
