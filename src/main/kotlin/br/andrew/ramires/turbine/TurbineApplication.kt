package br.andrew.ramires.turbine

import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication
import org.springframework.cloud.netflix.hystrix.dashboard.EnableHystrixDashboard
import org.springframework.cloud.netflix.turbine.stream.EnableTurbineStream

@SpringBootApplication
@EnableHystrixDashboard
@EnableTurbineStream
class TurbineApplication

fun main(args: Array<String>) {
	runApplication<TurbineApplication>(*args)
}
