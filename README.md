docker-npm-lazy
===============

Docker NPM mirror via npm-lazy

### NPM lazy for Docker

    docker build -t kisel/docker-npm-lazy github.com/kisel/docker-npm-lazy
    docker run -d --name npm-mirror -e URL=http://npm.example.com:8080 -p 8080:8080 kisel/docker-npm-lazy

### Use registry

    npm config registry http://npm.example.com:8080

### References

http://mixu.net/npm_lazy/  
https://github.com/mixu/npm_lazy

