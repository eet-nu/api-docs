---
title: Favourites
---

## Introduction

The Favourites API enables you to list the favourites of all users and change the favourites of the current user

The API can be used to:

 * [Retreive a list of favourite venues for a user](#favourites_list)
 * [Create a new favourite for the current user](#creating_favourites)
 * [Delete an existing favourite from the current user](#deleting_favourites)

All calls require an `api_profile_id` variable. This needs to be set to the profile id you want to perform the action on.

## Favourite list

You can get a list of all venues marked as favourite by a user by requesting the following URL:

    http://api.eet.nu/account/favourites?api_profile_id=:api_profile_id

## Create a favourite

You can create a favourite for a user by a http `POST` to the following url:

    http://api.eet.nu/account/favourites

Along with `api_profile_id` the body needs to contain the variable `venue_id` with the id of the venue you want to mark as favourite as value.

This action is limited to current user unless the current user is an admin

## Delete a favourite

You can delete a favourite by a http `DELETE` to the following url:

    http://api.eet.nu/account/favourites/:id?api_profile_id=:api_profile_id
    
The `:id` parameter is the id of the venue you no longer wish to mark as favourite

This action is limited to current user unless the current user is an admin