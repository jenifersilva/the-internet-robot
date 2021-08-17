[![Robot Framework](https://img.shields.io/badge/tested%20with-Robot%20Framework-%2300c0b5.svg)](https://robotframework.org/)

## The Internet tests:computer:

https://the-internet.herokuapp.com/

## What is it? :octocat:

It is an automation suite for The Internet application using Robot Framework and Selenium WebDriver.

## Setup :hammer:

1. Install Python and pip from [here](https://www.python.org/downloads/)
2. Install Robot Framework
    ```
    $ pip3 install robotframework
    ```
3. Install Selenium Library for Robot Framework
    ```
    $ pip3 install robotframework-seleniumlibrary
    ```
4. Install Google Chrome browser from [here](https://www.google.com/intl/pt-BR/chrome/)
5. Download Chromedriver according to your Google Chrome browser version from [here](https://sites.google.com/chromium.org/driver/)
6. Add Chromedriver to your PATH

## Running tests :arrow_forward:

Go to the ```web``` folder of the project through Terminal and execute the ```robot -d ./log tests``` command.

## Robot Framework keywords

The Robot Framework uses keywords to write tests. You can read the [doc](https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html) to know how to use keywords provided by SeleniumLibrary.

## Author :black_nib:
Jenifer Silva