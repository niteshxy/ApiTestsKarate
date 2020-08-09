# API tests with Karate

This projects contains some API tests which are implemented using [karate](https://github.com/intuit/karate) framework



## Getting Started

These instructions will get the tests running on your machine

### Installing & Running

#### Docker based:

1. Clone this repository on your machine.
2. open terminal, and run the command `docker-compose run api-tests`
3. This will run the tests and result will be visible in console after tests are finished.


#### Manual Installation:

#### Prerequisites
Java 8 and Maven

1. Clone this repository on your machine.
2. open terminal and navigate to the project root
3. Run the command `mvn package`
4. This will run the tests and result will be visible in console after tests are finished.



## Test Scenarios
Following test scenarios have been implemented

1. Test the /users endpoint and search for the user with username "Delphine".
2. Test the /posts endpoint and fetch all the posts of user with username "Delphine" by using the details fetched from previous request.
3. Test the /comments endpoint and fetch the comments in the posts by user "Delphine" by using the details from previous request and validate that the email format in the comments is valid.

## Framework Details
These tests are implemented in [karate](https://github.com/intuit/karate) framework. The tests are present in `.feature` files which are in the respective directories in  src/test/java/examples directory. The test follow the gherkin format which is supported by karate framework. All the implementation to run the scenarios in `.feature`  files is provided by karate. 
