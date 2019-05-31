---
title: Locations
---

## Introduction

The Locations API enables you to retrieve a list of locations that contain restaurants. Locations are stored hierarchical as Country => Region => City.

## Location details

If you know the **id** of a location, you can request it's information.

To retrieve information about a single location use the following URL format:

    https://api.eet.nu/locations/:id

## Location lists

You can get a list of all locations by requesting the following URL:

    https://api.eet.nu/locations

You can filter the list by type by adding the `type=:type` parameter:

 * Country -- `https://api.eet.nu/locations?type=Country`
 * Region -- `https://api.eet.nu/locations?type=Region`
 * City -- `https://api.eet.nu/locations?type=City`

You can filter the list by parent location by adding the `parent_id=:id` parameter:

 * Locations in The Netherlands -- `https://api.eet.nu/locations?parent_id=1974`
 * Locations in Noord-Holland -- `https://api.eet.nu/locations?parent_id=8`