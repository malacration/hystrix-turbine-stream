# Turbine Stream


#### Building and Run from Source


Copy the sample configuration file and modify the broken value

----
	$ cp src/main/resources/application.properties.sample src/main/resources/application.properties
----

This will build the jar and run the application

----
	$ ./gradlew build
    $ java -jar ./build/libs/turbine-x.y.z.jar
----

Alternatively.
This will run the application
----
	$ ./gradlew bootRun
----


#### Use docker version

----
	docker run --env brokers=localhost:9092 -p 8061:8061 -d malacration/turbine-stream
----


#### How to use turbine
Open in browser http://localhost:8061/hystrix and submit the adress http://localhost:8061/ in the form,
when your customers send messages on kafka, the dashboard will be populated