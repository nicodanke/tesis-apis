# Mixed-API Tesis Dankiewicz UB 2023

This project is a microservice API for Nicolas Dankiewicz's tesis. It is developed using Java SpringBoot 3.0.

## How to run the project ?

First of all, you need to download docker and maven locally. Then you can use a script that run all services.

- To build the docker images (only the first time and when you change the code):
```shell
./run.sh buildApi
```

- Then to start all the service you can run:
```shell
./run.sh start
```

- To stop all the service:
```shell
./run.sh stop
```

- To restart all the services:
```shell
./run.sh restart
```

- If you only want to start the databases and message queues, you can run:
```shell
./run.sh startInfra
```
This will allow you to run the services in IntelliJ and have the databases set up and ready to use.
If you want to stop these containers you can run:
```shell
./run.sh stopInfra
```

All this services can be accessed on localhost:8181


