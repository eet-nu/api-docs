---
title: Reviews
layout: page
permalink: /reviews/
---

## Introduction

With the venue's review API you can access the reviews of a venue

The API can be used to

 * [Retrieve a list of reviews](#reviews_list)
 * [Create a new review](#create_a_review)
 * [Upload images which will be displayed next to a review](#uploading_images)
 * [Like and unlike a review](#likes)
 * [Retrieve a list of responses and create a new response](#responses)

## Reviews list

To retrieve a list of reviews, you can use the following URL format:

    https://api.eet.nu/venues/:venue_id/reviews
    
## Create a review

You can create a review for a venue by issuing a http `POST` to the following url:

    https://api.eet.nu/venues/:venue_id/reviews

The format for the POST payload can be found on the following URL:

    https://api.eet.nu/venues/:venue_id/reviews/new

### Example review POST in JSON:

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

## Uploading images

You can upload images which will be displayed next to the review by providing a Base64 encoded file or by providing a URL to the image. Uploading using multipart form data is also supported.

### Example review POST in JSON using Base64 images
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
        "content": "QmFzZTY0IGVuY29kZWQgZmlsZQ=="
      }
    }
  ]
}
```

### Example review POST in JSON using URL upload
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

### Using Multipart form data

When the POST is being sent using Multipart form data, images can be uploaded as `images[]` attachment.

## Likes

To like a review, a http `POST` request can be issued to the following url:

    https://api.eet.nu/venues/:venue_id/reviews/:id/like
    
A review can be unliked by issuing a `DELETE` request to the same url: 

    https://api.eet.nu/venues/:venue_id/reviews/:id/like
    
The user should be [authenticated] to like and unlike reviews

## Responses

Users can respond to reviews and can see the list of responses to a review.

### Response list

To retrieve a list of responses, you can use the following URL format:

    https://api.eet.nu/venues/:venue_id/reviews/:id/responses

### Create a response

You can create a response to a review by issuing a http `POST` to the following url:

    https://api.eet.nu/venues/:venue_id/reviews/:id/responses

The format for the POST payload can be found on the following url:

    https://api.eet.nu/venues/:venue_id/reviews/:id/responses/new
    
When responding to a review, the user should be [authenticated].

[authenticated]: /account