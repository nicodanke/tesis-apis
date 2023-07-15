package nddev.tesis.saleservice;

import io.grpc.Server;
import io.grpc.ServerBuilder;
import lombok.extern.slf4j.Slf4j;
import nddev.tesis.saleservice.service.SaleService;
import nddev.tesis.saleservice.grpc.SaleServiceGrpcImpl;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.core.env.Environment;

import java.io.IOException;
import java.util.Objects;

@SpringBootApplication
@Slf4j
public class SaleServiceApplication {
    public static void main(String[] args) throws IOException {

        ConfigurableApplicationContext context = SpringApplication.run(SaleServiceApplication.class, args);

        Environment environment = context.getEnvironment();
        int grpcPort = Integer.parseInt(Objects.requireNonNull(environment.getProperty("server.grpc.port")));

        SaleService saleService = context.getBean(SaleService.class);
        Server server = ServerBuilder
                .forPort(grpcPort)
                .addService(new SaleServiceGrpcImpl(saleService)).build();

        server.start();
        log.info(String.format("GRPC server started at port: %d", grpcPort));
    }
}
