package nddev.inventapp.productservice;

import io.grpc.Server;
import io.grpc.ServerBuilder;
import lombok.extern.slf4j.Slf4j;
import nddev.inventapp.productservice.grpc.ProductServiceGrpcImpl;
import nddev.inventapp.productservice.service.ProductService;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.core.env.Environment;

import java.io.IOException;
import java.util.Objects;

@SpringBootApplication
@Slf4j
public class ProductServiceApplication {

	public static void main(String[] args) throws IOException, InterruptedException {

		ConfigurableApplicationContext context = SpringApplication.run(ProductServiceApplication.class, args);

		Environment environment = context.getEnvironment();
		int grpcPort = Integer.parseInt(Objects.requireNonNull(environment.getProperty("server.grpc.port")));

		ProductService productService = context.getBean(ProductService.class);
		Server server = ServerBuilder
				.forPort(grpcPort)
				.addService(new ProductServiceGrpcImpl(productService)).build();
		server.start();
		log.info(String.format("GRPC server started at port: %d", grpcPort));
		server.awaitTermination();
	}

}
