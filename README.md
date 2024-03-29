# Battle
Web app for an online battle game following the Model View Controller architecture.

## Table of Contents
* [Code Quality](#code-quality)
* [Technologies](#technologies)
* [Getting Started](#getting-started)
* [Testing](#testing)
* [Domain Model](#domain-model)
* [Principles and takeaways](#principles-and-takeaways)
* [Analysis](#analysis)
* [Author](#author)

## Code Qualityg

## Technologies
- Main technology
  - [Ruby](https://www.ruby-lang.org/en/) - High-level, general-purpose language utilized as main technology.
- Web Framework
  - [Sinatra](http://sinatrarb.com/) - Domain specific language utilized as web framework.
- Unit Test
  - [RSpec](https://rspec.info/) - Domain specific language utilized as testing tool.
- Feature Test
  - [Capybara](https://teamcapybara.github.io/capybara/) - Web-based test automation software utilized to simulate scenarios for user stories and automate web application testing.
- Documentation
  - [MD](https://www.markdownguide.org/) - Lightweight markup language utilized for documentation.

## Getting Started

Follow the instructions below to clone the repository and run it locally for testing and development demonstrations.

### Prerequisites
- Verify that a current version of Ruby is installed:
```bash
ruby -v
```

### Installing
- Clone the repository:
```bash
git clone git@github.com:xelAhcratiPsavilO/takeaway.git
```
- Install dependencies listed in the Gemfile:
```bash
bundle install
```

### Running
- Install shotgun:
```bash
gem install shotgun
```
- Target the configuration file:
```bash
rackup
```
- Open the browser on the port 9393:
localhost:9393

### Testing
- Launch RSpec to verify that all tests are passing:
```bash
rspec
```
- Expected output:
```bash
....
Finished in 0.20251 seconds (files took 0.8677 seconds to load)
31 examples, 0 failures
```


## Domain Model

High-level overview of the entities that make up this functional system.

![](domain_model/Domain_Model.png)

Based on [client's requirements](USER_STORIES.md).

Objects-Messages [diagram](DIAGRAM.md).

## Principles and takeaways


## Analysis


## Author

Alejandro Pitarch Olivas
