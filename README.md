# Campus Delivery Service

## Introduction
A controlled campus delivery service is offered on university campuses which allows students to order food and earn money as delivery drivers. We are implementing a rating system that tracks ratings for delivery drivers and restaurants. The rating system stores information about individual drivers and restaurants along with their ratings.

## Use Case For Rating System
![](Images/RatingSystemUseCase.png)

## Business Rules
* Customers may choose to not provide a rating 
* Customers must be a faculty, student, or staff
* One customer can only be a faculty, student, or staff
* Only students can be drivers and must be approved
* Database will store the drivers license number, datehired, vehicle information, and ratings
* All deliveries are tied to one person and one restaurant
* Drivers may only deliver one order at a time but can deliver many times
* One person may order one or many times and therefore can rate many times
* Restaurants must be approved and will provide an ID, location, schedule, website, and other attributes
* Administrators must be approved and can choose to not review any ratings
* Ratings will include a description and 1-5 star rating

## EERD
![](Images/CampusEatsModel.png)
## MySQL Queries
## Stored Procedures
## Web/App Implementation (Optional) or Description of Future Work
## MySQL dump
## Project Video

## Contributors
* Wallid Ortiz
* Christian Hasty
* Hunter Hawkins
* Connor Kells
