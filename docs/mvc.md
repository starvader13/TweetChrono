# The model View Controller (MVC) Pattern

GET /about HTTP/1.1
Host: 127.0.0.1

## Route
Matchers for the URL that is requested

GET for "/about"

I see you reqested "/about", we will give that to the AboutController to handle

## Models
Database wrapper

User
* query for records
* wrap individual records

## Views
Your response body content 
* HTML
* CSV
* PDF
* XML

This is what gets set back to the browser and dispalyes 

## Controllers
Decide how to process a request and define a response