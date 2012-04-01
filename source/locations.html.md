---
title: Locations
---

## Introduction

The Locations API enables you to retreive a list of locations that contain restaurants.

## Location details

If you know the **id** of a location, you can request it's information.

To retreive information about a single location use the following URL format:

    http://api.eet.nu/locations/:id

## Location lists

You can get a list of all locations by requesting the following URL:

    http://api.eet.nu/locations

There are currently 3 types of locations, that can be retreived by adding the `type=:type` parameter:

 * Country -- `http://api.eet.nu/locations?type=Country`
 * Region -- `http://api.eet.nu/locations?type=Region`
 * City -- `http://api.eet.nu/locations?type=City`