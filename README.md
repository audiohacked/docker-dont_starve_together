# Don't Starve Together Dedicated Server in a Docker Container
Pull image:
```
docker pull audiohacked/dont_starve_together
```

Highly recommended to run a data container:
```
docker run --name dontstarve_data audiohacked/dont_starve_together true
```

Then, run the server container:
```
docker run -it --name dontstarve \
    --volumes-from dontstarve_data \
    --p 10999:10999 \
    audiohacked/dont_starve_together
```
