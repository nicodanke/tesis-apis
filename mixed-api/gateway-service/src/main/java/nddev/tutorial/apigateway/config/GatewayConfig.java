package nddev.tutorial.apigateway.config;

import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.cloud.gateway.route.RouteLocator;
import org.springframework.cloud.gateway.route.builder.RouteLocatorBuilder;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
@RequiredArgsConstructor
public class GatewayConfig {

    @Value("${services.product.url}")
    private String productServiceUrl;

    @Value("${services.supplier.url}")
    private String supplierServiceUrl;

    @Value("${services.sale.url}")
    private String saleServiceUrl;

    @Bean
    public RouteLocator routes(RouteLocatorBuilder builder) {
        return builder.routes()
                .route("product-service", r -> r
                        .path("/api/products/**")
                        .uri(productServiceUrl))
//                .route("sale-service", r -> r
//                        .path("/api/sales/**")
//                        .uri(saleServiceUrl))
                .route("suppliers-service", r -> r
                        .path("/api/suppliers/**")
                        .uri(supplierServiceUrl))
                .build();
    }

}