# DOCKER LEMP STACK
This just a simply lemp stack, nothing to fancy.
It's build for development, use it as production image at your own risk.

### Symfony
For symfony user, I would recomend when mounting your project
that you to it with `:cached`. It will make it a lot faster

### Usage
`docker-compose up -d`
or if you changed the dockerfile
`docker-compose build && docker-compose up -d`