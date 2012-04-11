---
title: Tags
---

## Introduction

The Tags API enables you to list the tags including venue count per tag

The API can be used to:

 * [Retreive a list of all aviable tags](#tag_list)
 * [Retrieve a list of tags belonging to a search](#tags_from_a_search)
 * [Filtering results](#filtering_results)

A comprehensive [list of all tags](#list_of_all_tags) can be found at the bottom of this page

## Tag list

You can get a list of all tags by requesting the following URL:

    http://api.eet.nu/tags

## Tags from a search

To get the tags belonging to a venue search, you can use the same variables as you use in the [Venues API].

It accepts a query:

    http://api.eet.nu/tags?query=:query

Geolocation:

    http://api.eet.nu/tags?geolocation=:latitude,:longitude

Including max_distance:
    
    http://api.eet.nu/tags?max_distance=:max_distance&geolocation=:latitude,:longitude

## Filtering results

It is possible to further limit the number of tags returned by applying filters. It is possible to filter tags by:

 * [Location](#filtering_by_location)
 * [Tags](#filtering_by_tags)

### Filtering by location

To only return tags from a specified location, use the following URL format:

    http://api.eet.nu/tags?location_id=:location_id

`:location_id` is the *id* of a location which can be obtained using the [Locations API].

### Filtering by tags

To only return specific tags, you can use the following URL format:

    http://api.eet.nu/tags?tags=:tags

The `:tags` parameter is a comma separated list of tags. To find out what tags are available, use the [Facets API].

## List of all tags

Here you can find a list of all supported tags and their meaning. The tags are used in the following contexts:

  * [Kitchens](#kitchens)
  * [Payment methods]()
  * [Accessibility](#accessibility)
  * [Children](#children)
  * [Facilities](#facilities)
  * [Environments](#enviroments)
  * [Ambiances](#ambiances)
  * [Diets](#diets)
  * [Toplists](#toplists)
  * [Listing](#listing)
  * [Opening Hours](#opening_hours)
  

### Kitchens

A venue has at least one kitchen and can have a maximum of three kitchens.

One kitchen is marked as main kitchen. The main kitchen is used to display the venue in various kitchen oriented lists.

We try to keep the kitchen list small so rarely used kitchens are not supported. Restaurants with an exotic kitchen are usually grouped in an overarching kitchen. ie. Irish restaurants are grouped under `western-european`.

  * african
  * american
  * asian
  * australian
  * balkan
  * bbq
  * bistro
  * chinese
  * chinese-indian
  * dutch
  * east-european
  * eatery
  * egyptian
  * english
  * fish
  * fondue
  * food-vendor
  * french
  * fusion
  * greek
  * grill
  * ice-cream-parlor
  * indian
  * indonesian
  * international
  * israeli
  * italian
  * japanese
  * kebab
  * kosher-depricated
  * lunchroom
  * maroccan
  * mexican
  * middle-east
  * pancake
  * pizza
  * portuguese
  * regional
  * russian
  * sandwiches
  * scandinavian
  * snackbar
  * south-american
  * south-european
  * steak-house
  * surinamese
  * sushi
  * takeaway-and-delivery
  * tapas
  * text-mex
  * thai
  * turkish
  * vegetarian-depricated
  * vietnamese
  * western-european
  * wok
  
### Payment methods

The different payment methods a venue accepts
  
  * american-express
  * chip
  * diners-club
  * master-card
  * pin
  * visa

### Accessibility

  * accessible (by wheelchair)
  * handicap-parking
  * handicap-toilet
  
### Children

  * baby-changing-station
  * child-entertainment
  * child-seats
  * microwave (for baby food)
    
### Facilities

  * all-inclusive
  * allows-dogs
  * caters
  * delivers
  * high-tea
  * smokers-room
  * takeaway
  * terrace
  * wifi
    
### Environments

Where is the restaurant located.

  * town-centre
  * on-the-waterside
  * in-the-woods
  * at-the-beach
  * roadside
  * rural
  
### Ambiances

What is the feel of the restaurant, what does it look like?

  * budget
  * hip
  * child-friendly
  * luxe
  * romantic
  * calm
  * formal
  * homy
  * cosy
  * classic
  * nostalgic

### Diets

Diets supported by the restaurant

  * biological
  * glutenfree
  * halal
  * kosher
  * lactose-free
  * sugar-free
  * vegetarian
    
### Toplists

If the restaurant is listed in the most recent version of various famous top listings

  * lekker-top100
  * bib-gourmand
  * cafetaria-top100
  * michelin
    
### Listing

Special stuff we show in venue listings.

  * discount-online
  * order-online
  * book-online
  * has-reviews
  * has-photos
  * online-menu

### Opening hours

Time tags. To find a venue that is now open or on monday when it's hard to find an open restaurant.

  * open-on-monday
  * open-on-tuesday
  * open-on-wednesday
  * open-on-thursday
  * open-on-friday
  * open-on-saturday
  * open-on-sunday
  * now-open

[Venues API]: /venues#searching_for_venues "Venues API"
[Locations API]: /locations "Locations API"
[Facets API]: /facets "Facets API"