package nddev.tesis.supplierservice.config;

import nddev.tesis.supplierservice.client.ProductClientService;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.cloud.client.loadbalancer.LoadBalanced;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpStatusCode;
import org.springframework.web.reactive.function.client.WebClient;
import org.springframework.web.reactive.function.client.support.WebClientAdapter;
import org.springframework.web.service.invoker.HttpServiceProxyFactory;
import reactor.core.publisher.Mono;

@Configuration
public class WebClientConfig {

    @Value("${services.product.url}")
    private String productServiceUrl;

    @Bean
    @LoadBalanced
    public WebClient.Builder productServiceWebClient() {
        return WebClient.builder()
                .defaultStatusHandler(HttpStatusCode::is4xxClientError, resp -> Mono.just(new RuntimeException("Error 400 en SaleService")))
                .defaultStatusHandler(HttpStatusCode::is5xxServerError, resp -> Mono.just(new RuntimeException("Error 500 en SaleService")))
                .baseUrl(productServiceUrl);
    }

    @Bean
    public ProductClientService productClientService() {
        HttpServiceProxyFactory httpServiceProxyFactory = HttpServiceProxyFactory
                .builder(WebClientAdapter.forClient(productServiceWebClient().build()))
                .build();
        return httpServiceProxyFactory.createClient(ProductClientService.class);
    }
}
