# docker-private-registry
Create private registry for docker images

## Step 1 - Define environment variables.
```bash
export LETSENCRYPT_HOST=registry.domain.com
export LETSENCRYPT_EMAIL=user@domain.com
```

## Step 2 - Start containers with docker-compose.
```bash
docker-compose up -d
```

## Step 3 - Add authentication user for registry.
```bash
docker exec -ti registry ash -c "htpasswd -Bbn user_name p4ssw0rd > /var/lib/registry/passfile"
```

## Step 4 - Login to registry.
```bash
docker login -u user_name registry.domain.com
```

## Step 5 - Upload sample image.
```bash
docker tag registry:2.7.1 registry.domain.com/registry:latest
docker push registry.domain.com/registry:latest
```
