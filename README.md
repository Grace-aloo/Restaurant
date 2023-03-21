# RESTAURANT-PIZZA 
## Description
This is an API created by Ruby on Rails. It's of a restaurants table that has a many-to-many relationship with a pizzas table and the tables are joined by a restaurant_pizzas.

It has the following routes
      
       GET /restaurants
       
[
  {
    "id": 1,
    "name": "Sottocasa NYC",
    "address": "298 Atlantic Ave, Brooklyn, NY 11201"
  },
  {
    "id": 2,
    "name": "PizzArte",
    "address": "69 W 55th St, New York, NY 10019"
  }
]       
       
       GET /restaurants/:id
       
 If the `Restaurant` exists, return JSON data in the format below:

```
{
  "id": 1,
  "name": "Sottocasa NYC",
  "address": "298 Atlantic Ave, Brooklyn, NY 11201",
  "pizzas": [
    {
      "id": 1,
      "name": "Cheese",
      "ingredients": "Dough, Tomato Sauce, Cheese"
    },
    {
      "id": 2,
      "name": "Pepperoni",
      "ingredients": "Dough, Tomato Sauce, Cheese, Pepperoni"
    }
  ]
}
```

If the `Restaurant` does not exist, return the following JSON data, along with
the appropriate HTTP status code:

```
{
  "error": "Restaurant not found"
}
```      
       
       DELETE /restaurants/:id
       
DELETE /restaurants/:id
If the `Restaurant` exists, it should be removed from the database, along with
any `RestaurantPizza`s that are associated with it (a `RestaurantPizza` belongs
to a `Restaurant`, so you need to delete the `RestaurantPizza`s before the
`Restaurant` can be deleted).

After deleting the `Restaurant`, return an _empty_ response body, along with the
appropriate HTTP status code.

If the `Restaurant` does not exist, return the following JSON data, along with
the appropriate HTTP status code:

```
{
  "error": "Restaurant not found"
}
```       
       
       GET /pizzas
       
Return JSON data in the format below:

```
[
  {
    "id": 1,
    "name": "Cheese",
    "ingredients": "Dough, Tomato Sauce, Cheese"
  },
  {
    "id": 2,
    "name": "Pepperoni",
    "ingredients": "Dough, Tomato Sauce, Cheese, Pepperoni"
  }
]
```       
       
       POST /restaurant_pizzas
       
This route should create a new `RestaurantPizza` that is associated with an
existing `Pizza` and `Restaurant`. It should accept an object with the following
properties in the body of the request:

```
{
  "price": 5,
  "pizza_id": 1,
  "restaurant_id": 3
}
```

If the `RestaurantPizza` is created successfully, send back a response with the data
related to the `Pizza`:

```
{
  "id": 1,
  "name": "Cheese",
  "ingredients": "Dough, Tomato Sauce, Cheese"
}
```

If the `RestaurantPizza` is **not** created successfully, return the following
JSON data, along with the appropriate HTTP status code:

```
{
  "errors": ["validation errors"]
}

```       

## Requirements
In order to use this repo you need to have the following installed:

- OS [either: Windows 10+, Linux or MacOS(running on x86 or arm architecture)]
- VS Code
- Ruby

## Installation
Clone from this here [github](https://github.com/Grace-aloo/Restaurant)

to clone follow this steps


Clone the repo by using the following:     

       https://github.com/Grace-aloo/Restaurant

Change directory to the repo folder: 

        cd Restaurant

Open it in Visual Studio Code

        code .

## Running This Application
Running the application is very straight forward. You can use the following steps to run the app. 

- Ensure the ruby gems are setup in your machine

      bundle install
      
- Perform database migrations

      rails db:migrate
      
- Run the application on the terminal

      rails console

- Run the server

      rails s      
      



## Author 

 Grace Aloo

## License
MIT