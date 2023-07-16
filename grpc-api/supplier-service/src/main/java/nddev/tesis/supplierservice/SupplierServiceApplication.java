package nddev.tesis.supplierservice;

import io.grpc.Server;
import io.grpc.ServerBuilder;
import lombok.extern.slf4j.Slf4j;
import nddev.tesis.supplierservice.grpc.SupplierServiceGrpcImpl;
import nddev.tesis.supplierservice.service.SupplierService;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.core.env.Environment;

import java.io.IOException;
import java.util.Objects;

@SpringBootApplication
@Slf4j
public class SupplierServiceApplication {
    public static void main(String[] args) throws IOException, InterruptedException {

        ConfigurableApplicationContext context = SpringApplication.run(SupplierServiceApplication.class, args);

        Environment environment = context.getEnvironment();
        int grpcPort = Integer.parseInt(Objects.requireNonNull(environment.getProperty("server.grpc.port")));

        SupplierService supplierService = context.getBean(SupplierService.class);
        Server server = ServerBuilder
                .forPort(grpcPort)
                .addService(new SupplierServiceGrpcImpl(supplierService)).build();

        server.start();
        log.info(String.format("GRPC server started at port: %d", grpcPort));
        server.awaitTermination();
    }
}
