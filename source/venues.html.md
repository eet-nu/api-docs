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

You can limit the number of restaurants returned by supplying an optional `max_distance` parameter with a the maximum distance in meters. 

To search for venues within 50 meters of a location, use the following URL format:

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

## Reviews

With the venue's review API you can access the reviews of a venue

### Reviews list

To retrieve a list of reviews, you can use the following URL format:

    https://api.eet.nu/venues/:id/reviews
    
### Create a review

You can create a review for a venue by issuing a http `POST` to the following url:

    https://api.eet.nu/venues/:id/reviews

The format for the POST payload can be found on the following URL:

    https://api.eet.nu/venues/:id/reviews/new

#### Example review POST in JSON:

```javascript
{
  "body": "Ik heb hier al een aantal keren geluncht. De bediening wisselt in kwaliteit, alhoewel altijd vriendelijk, gaat er soms wel eens wat mis.

Tafeltjes zijn erg klein, waardoor je de hele tijd moet schuiven en stapelen met borden om fijn te kunnen eten. Dit is wat mij betreft het grootste minpunt van het restaurant.

De sfeer in het restaurant is wel prima. Alles is heel gezellig ingericht en er zijn overal leuke, kleine details. Het eten zelf is ook heel goed, alhoewel het wel aan de prijzige kant is.

Wat mij betreft een aanrader voor het afhalen van je lunch. Om daar te eten is het gewoon iets te krap.",
  "author": {
    "name": "Tom-Eric",
    "email": "tomeric@eet.nu"
  },
  "scores": {
    "food": 80,
    "ambiance": 70,
    "service": 60,
    "value": 60
  }
}
```

* If the current user is [authenticated] "author" can be omitted from the payload.
* Make sure the POST is sent from the clients computer.
* Grades have to be in the 10 - 100 range.

### Uploading images

You can upload images which will be displayed next to the review by providing a Base64 encoded file or by providing a URL to the image. Uploading using multipart form data is also supported.

#### Example review POST in JSON using Base64 images
```javascript
{
  "body": "...",
  "author": {
      "name": "Tom-Eric",
      "email": "tomeric@eet.nu"
  },
  "scores": {
    "food": 80,
    "ambiance": 70,
    "service": 60,
    "value": 60
  },
  "images": [
    {
      "attachment": {
        "filename": "image.jpg",
        "contents": "QmFzZTY0IGVuY29kZWQgZmlsZQ=="
      }
    }
  ]
}
```

#### Example review POST in JSON using URL upload
```javascript
{
  "body": "...",
  "author": {
      "name": "Tom-Eric",
      "email": "tomeric@eet.nu"
  },
  "scores": {
    "food": 80,
    "ambiance": 70,
    "service": 60,
    "value": 60
  },
  "images": [
    {
      "url": "http://example.com/image.jpg"
    }
  ]
}
```

#### Using Multipart form data

When the POST is being sent using Multipart form data, images can be uploaded in the `images[]` array.

[Locations API]: /locations "Locations API"
[Facets API]: /facets "Facets API"
[Tags API]: /tags "Tags API"
[authenticated]: /account
