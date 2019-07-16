---
title: Venues
---

## Introduction

The Venues API enables you to find and retrieve information about restaurants.

The API can be used to:

 * [Retrieve information of a specific venue](#venue_details)
 * [Finding restaurants with a list of IDs](#venue_lists)
 * [Search our database for venues](#searching_for_venues)
 * [Narrow results with filters](#filtering_results)
 * [Find restaurants in a location](#filtering_results)
 * [Find restaurants near a geolocation](#geolocation)
 * [Access the reviews of a specific venue](#reviews)

## Venue details

If you know the **id** of a restaurant, you can request detailed information about it. A request for a venue's details contains more information, such as a list of tags, images, menu's, opening hours and more.

To retrieve all data for a single venue use the following URL format:

    https://api.eet.nu/venues/:id

## Venue lists

If you know the **id**'s of several restaurants, you can request information about all of them with 1 request.

To retrieve information about multiple venues, use the following URL format:

    https://api.eet.nu/venues?ids=:ids

The `:ids` parameter is a comma separated list of venue id's. The results that are returned are sorted by `rating`. To control how these results are sorted, see the [section about sorting results](#sorting_results).

## Searching for venues

You can perform a full text search on our database and find restaurants that match your query.

To search for venues, use the following URL format:

    https://api.eet.nu/venues?query=:query

The results that are returned are sorted by `relevance`. To control how these results are sorted, see the [section about sorting results](#sorting_results).

## Geolocation

You can find restaurants near a given geolocation with the `geolocation` parameter.

To search for venues near a point, use the following URL format:

    https://api.eet.nu/venues?geolocation=:latitude,:longitude

The results that are returned are sorted by `distance`. To control how these results are sorted, see the [section about sorting results](#sorting_results).

Results returned also include an extra `distance` attribute with the distance to the given location in meters.

You can limit the number of restaurants returned by supplying an optional `max_distance` parameter with a the maximum distance in kilometers. 

To search for venues within a specified distance of a location, use the following URL format:

    https://api.eet.nu/venues?max_distance=:max_distance&geolocation=:latitude,:longitude

Geolocation can be mixed with search, so it's possible to find restaurants matching a query near a given location. Results are sorted by `relevance`, but you can sort by `distance` too. To search for venues matching a query near a location, use the following URL format:

    https://api.eet.nu/venues?query=:query&max_distance=:max_distance&geolocation=:latitude,:longitude

## Filtering results

It is possible to further limit the number of restaurants returned by applying filters. It is possible to filter restaurants by:

 * [Location](#filtering_by_location)
 * [Tags](#filtering_by_tags)

### Filtering by location

To only return restaurants from a specified location, use the following URL format:

    https://api.eet.nu/venues?location_id=:location_id

`:location_id` is the *id* of a location which can be obtained using the [Locations API].

### Filtering by tags

To only return restaurants that have one or more tags, you can use the following URL format:

    https://api.eet.nu/venues?tags=:tags

The `:tags` parameter is a comma separated list of tags. To find out what tags are available, use the [Tags API].

## Sorting results

It is possible to sort venues with the `sort_by` parameter. You can sort venues by:

 * `rating` -- Highest rated venues are returned first
 * `reviews` -- Venues with the most reviews are returned first

If the `geolocation` parameter is set, it's also possible to sort venues by:

 * `distance` -- Nearest venues are returned first

If the `query` parameter is present, you can sort venues by:

 * `relevance` -- Most relevant venues are returned first

To sort venues by a different criteria, use the following URL format:

    https://api.eet.nu/venues?sort_by=:subject

[Locations API]: /locations "Locations API"
[Tags API]: /tags "Tags API"
