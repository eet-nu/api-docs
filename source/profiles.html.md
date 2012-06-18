---
title: Profiles
---

## Introduction

The Profiles API enables you to retrieve information about profiles. Profiles belong to an account and contain all information that is not related to authentication.

The API can be used to:

 * [Retrieve information of a specific profile](#profile_details)
 * [Access the favourite restaurants of a profile](#favourites)
 * [Retrieve the reviews of a specific profile](#reviews)
 * [Retrieve the followers of a specific profile](#followers)
 * [See who the profile is following](#following)
 
## Profile details

If you know the **id** of a profile, you can request it's information

To retrieve information about a single profile use the following URL format:

    https://api.eet.nu/profiles/:id

## Favourites

With the profile favourites API you can access the favourites of a profile

It can be used to:

 * [Retreive a list of favourite venues from a profile](#favourites_list)
 * [Add a new favourite to the profile of the currently logged in user](#create_a_favourite)
 * [Delete favourites from the profile of the currently logged in user](#delete_a_favourite)

### Favourite list

You can get a list of all venues marked as favourite by a user by requesting the following URL:

    https://api.eet.nu/profiles/:id/favourites

### Create a favourite

You can create a favourite for a user by issuing a http `POST` to the following url:

    https://api.eet.nu/profiles/:id/favourites

The body needs to contain the variable `venue_id` with the id of the venue you want to mark favourite as value.

You are only allowed to add favourites to the profile of the currently logged in user

### Delete a favourite

You can delete a favourite by issuing a http `DELETE` to the following url:

    https://api.eet.nu/profiles/:id/favourites/:venue_id
    
The `:venue_id` parameter is the id of the venue you no longer wish to mark as favourite

You are only allowed to remove favourites to the profile of the currently logged in user

## Reviews

You can get a list of all reviews belonging to the profile by requesting the following URL:

    https://api.eet.nu/profiles/:id/reviews
    
## Followers

You can get a list of all followers of a profile by requesting the following URL:

    https://api.eet.nu/profiles/:id/followers

## Following

You can get a list of profiles that are followed by the given profile by requesting the following URL:

    https://api.eet.nu/profiles/:id/following

