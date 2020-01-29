# ProfileApp

A Blazor Web Assembly Application to describe my person.

This project will act as a playground to show high project standards including clean-code, TDD and many CI/CD processes.

[![Build Status](https://dev.azure.com/petergray95/ProfileApp/_apis/build/status/petergray95.ProfileApp?branchName=master)](https://dev.azure.com/petergray95/ProfileApp/_build/latest?definitionId=1&branchName=master)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://github.com/petergray95/ProfileApp/blob/master/LICENSE)

![.NET Core build](https://github.com/petergray95/ProfileApp/workflows/.NET%20Core%20build/badge.svg?branch=master)

[![Dev Badge](https://img.shields.io/badge/dev-:8080-f39f37)](http://petergray.xyz:8080)  
[![Prod Badge](https://img.shields.io/badge/prod-:80-b82100)](http://petergray.xyz/)

## TODO

- [ ] Setup continuous integration for publishing docker images to docker hub
- [ ] Create continuous delivery for passing master builds to be deployed to port 8080
- [ ] Create delivery for tagged builds to be deployed to port 80
- [ ] Setup dependabot for automatic pull request dependency updates
- [ ] Add versioning to build and display on web page
- [ ] Add biography
- [ ] Add links to LinkedIn, Instagram, Facebook
- [ ] Setup test project
- [ ] Setup integration test CI
- [ ] Create a web api (REST/gRPC)
- [ ] Create a monitoring page

## CI/CD Process

- Any passing build of master will be deployed to production  on port 8080
- Tagged builds will be the ones that are manually deployed to production on port 80
