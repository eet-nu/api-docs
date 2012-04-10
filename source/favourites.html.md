---
title: Favourites
---

## Introduction

The Favourites API enables you to access the favourites of a profile

The API can be used to:

 * [Retreive a list of favourite venues from a profile](#favourites_list)
 * [Add a new favourite to the profile of the currently logged in user](#creating_favourites)
 * [Delete favourites from the profile of the currently logged in user](#deleting_favourites)

## Favourite list

You can get a list of all venues marked as favourite by a user by requesting the following URL:

    http://api.eet.nu/profiles/:id/favourites

## Create a favourite

You can create a favourite for a user by a http `POST` to the following url:

    http://api.eet.nu/profiles/:id/favourites

The body needs to contain the variable `venue_id` with the id of the venue you want to mark favourite as value.

You are only allowed to add favourites to the profile of the currently logged in user

## Delete a favourite

You can delete a favourite by a http `DELETE` to the following url:

    http://api.eet.nu/profiles/:id/favourites/:venue_id
    
The `:venue_id` parameter is the id of the venue you no longer wish to mark as favourite

You are only allowed to remove favourites to the profile of the currently logged in user
