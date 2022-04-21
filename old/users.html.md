---
title: Users
---

## Introduction

The Users API enables you to retrieve information about users.

The API can be used to:

 * [Find a user by email](#search)
 * [Retrieve information of a specific user](#user_details)
 * [Access the favourite restaurants of a user](#favourites)
 * [Retrieve the reviews of a specific user](#reviews)
 * [Retrieve the followers of a specific user](#followers)
 * [See who the user is following](#following)

## Search

To find a specific user by **email**, you can use the following URL:

    https://api.eet.nu/users?email=:email
  
This will return 1 or 0 results because email is a unique property of our users. It is not possible to search by email fractions.

## User details

If you know the **id** of a user, you can request it's information

To retrieve information about a user use the following URL format:

    https://api.eet.nu/users/:id

## Favourites

With the user favourites API you can access the favourites of a user

It can be used to:

 * [Retrieve a list of favourite venues from a user](#favourites_list)
 * [Add a new favourite to the currently logged in user](#create_a_favourite)
 * [Delete favourites from the currently logged in user](#delete_a_favourite)

### Favourite list

You can get a list of all venues marked as favourite by a user by requesting the following URL:

    https://api.eet.nu/users/:id/favourites

### Create a favourite

You can create a favourite for a user by issuing a http `POST` to the following url:

    https://api.eet.nu/users/:id/favourites

The body needs to contain the variable `venue_id` with the id of the venue you want to mark favourite as value.

You are only allowed to add favourites to the currently logged in user

### Delete a favourite

You can delete a favourite by issuing a http `DELETE` to the following url:

    https://api.eet.nu/users/:id/favourites/:venue_id
    
The `:venue_id` parameter is the id of the venue you no longer wish to mark as favourite

You are only allowed to remove favourites from the currently logged in user

## Reviews

You can get a list of all reviews belonging to the user by requesting the following URL:

    https://api.eet.nu/users/:id/reviews
    
## Followers

You can get a list of all followers of a profile by requesting the following URL:

    https://api.eet.nu/users/:id/followers

## Following

With the user following API you can access the users that are followed by the given user

It can be used to:

 * [List the users being followed by the given user](#following_list)
 * [Follow a user](#follow)
 * [Unfollow a user](#unfollow)

### Following list

You can get a list of user being followed by the given user by requesting the following URL:

    https://api.eet.nu/users/:id/following

### Follow

You can follow a user by issuing a http `POST` to the following url:

    https://api.eet.nu/users/:id/following
  
The body needs to contain the variable 'id' with the id of the user you want to follow. You can only add to this list for the currently logged in user.
    

### Unfollow

You can unfollow a user by issuing a http `DELETE` to the following url:

    https://api.eet.nu/users/:id/following/:user_id
    
The `:user_id` parameter is the id of the user you no longer wish to follow. You are only allow to remove followed users for the currently loggen in user.
