# Karate_Tutorial
Hi All,
Welcome to this Karate API testing tutorial.
This repo is all about how Karate can be used to test Restful API.
In testscripts folder I have written feature file for GET,POST,PUT and DELETE request.
To do hands-on, you can clone the repo, open the project in IDE and navigate to testscripts folder.
You can either run the feature file or you can execute all the test scripts using TestRunner class.
Now talking about Karate and BDD Framework.

## Karate and BDD
Karate is built on top of Cucumber, another BDD testing framework, and shares some of the same concepts. One of these is the use of a Gherkin file, which describes the tested feature. However, unlike Cucumber, tests aren't written in Java and are fully described in the Gherkin file.

A Gherkin file is saved with the “.feature” extension. It begins with the Feature keyword, followed by the feature name on the same line. It also contains different test scenarios, each beginning with the keyword Scenario and consisting of multiple steps with the keywords Given, When, Then, And, and But.

## Features
- Java knowledge is not required and even non-programmers can write tests
- Scripts are plain-text, require no compilation step or IDE, and teams can collaborate using Git / standard SCM
- Based on the popular Cucumber / Gherkin standard - with IDE support and syntax-coloring options



## Maven Dependencies

To make use of Karate in a Maven project, we need to add the karate-apache dependency to the pom.xml:
```
<dependency>
    <groupId>com.intuit.karate</groupId>
    <artifactId>karate-apache</artifactId>
    <version>0.6.0</version>
</dependency>
```
We'll also need the karate-junit4 dependency to facilitate JUnit testing:
```
<dependency>
    <groupId>com.intuit.karate</groupId>
    <artifactId>karate-junit4</artifactId>
    <version>0.6.0</version>
</dependency>
```
## Creating Tests
We'll start by writing tests for some common scenarios in a Gherkin Feature file.
### Testing the Status Code
Let's write a scenario that tests a GET endpoint and checks if it returns a 200 (OK) HTTP status code:
```
Scenario: Testing valid GET endpoint
Given url 'http://localhost:8097/user/get'
When method GET
Then status 200
```
This works obviously with all possible HTTP status codes.
### Testing the Response
Let's a write another scenario that tests that the REST endpoint returns a specific response:

```
Scenario: Testing the exact response of a GET endpoint
Given url 'http://localhost:8097/user/get'
When method GET
Then status 200
And match $ == {id:"1234",name:"John Smith"}
```
The match operation is used for the validation where ‘$' represents the response. So the above scenario checks that the response exactly matches ‘{id:”1234″,name:”John Smith”}'.
We can also check specifically for the value of the id field:
And match $.id == "1234"
## Running Tests
Now that the test scenarios are complete, we can run our tests by integrating Karate with JUnit.
```
@RunWith(Karate.class)
@CucumberOptions(features = "classpath:karate")
public class KarateUnitTest {
//...     
}
```
Note: We can also karate-config.js file to store global variables,configure execution environment,baseurl,timeout time.
Karate read this file before executing any scenario.
To use karate env in testrunner class:
@BeforeClass
public static void Before()
{   System.setProperty("karate.env","qa")
}


Thank You\
Happy Coding,\
Learn,Code and Earn\
Stay Safe and Stay Positive :)
