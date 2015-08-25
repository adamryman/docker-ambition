# Docker images for ambition

I am using this repo to mess around with creating a docker image for [ambition](http://mymabition.io)

Some links for my reference.

https://docs.docker.com/examples/postgresql_service/
https://hub.docker.com/_/postgres/

I think the idiomatic way to do this would be to have 2 containers running different images. One with postgresql and the other with ambition and have them talk to eachother

The game plan is:

- Posgresql image with database setup created for ambition
- Go image with go and git installed
- When running Go image as container it will take a branch as input. Clone ambition from github, switch to that branch, and install it.
- Then you can execute commands to that container. `ambition seed`, `ambition run`, etc
