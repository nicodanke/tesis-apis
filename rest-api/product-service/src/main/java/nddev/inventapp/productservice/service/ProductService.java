package nddev.inventapp.productservice.service;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import nddev.inventapp.productservice.client.SaleClient;
import nddev.inventapp.productservice.dto.ProductWithSalesResponse;
import nddev.inventapp.productservice.model.Sale;
import nddev.inventapp.productservice.repository.ProductRepository;
import nddev.inventapp.productservice.dto.ProductResponse;
import nddev.inventapp.productservice.model.Product;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
@RequiredArgsConstructor
@Slf4j
public class ProductService {

    private final ProductRepository productRepository;
    private final SaleClient saleClient;

    public List<ProductResponse> getAllProducts() {
        List<Product> products = productRepository.findAll();

        return products.stream().map(this::mapToProductResponse).toList();
    }

    public List<ProductWithSalesResponse> getAllProductsWithSalesQuantity() {
        List<Product> products = productRepository.findAll();

        Map<Product, Integer> salesByProducts = new HashMap<>();
        products.forEach((e) -> {
            List<Sale> salesByProduct = saleClient.getAllByProductId(e.getId());
            int quantity = salesByProduct.stream().map(Sale::getQuantity).reduce(0, Integer::sum);
            salesByProducts.put(e, quantity);
        });

        return products.stream().map((e) -> mapToProductWithSalesResponse(e, salesByProducts.get(e))).toList();
    }

    public List<ProductWithSalesResponse> getProductsWithSalesQuantityBySupplierId(Long supplierId) {
        List<Product> products = productRepository.findAllBySupplierId(supplierId);

        Map<Product, Integer> salesByProducts = new HashMap<>();
        products.forEach((e) -> {
            List<Sale> salesByProduct = saleClient.getAllByProductId(e.getId());
            int quantity = salesByProduct.stream().map(Sale::getQuantity).reduce(0, Integer::sum);
            salesByProducts.put(e, quantity);
        });

        return products.stream().map((e) -> mapToProductWithSalesResponse(e, salesByProducts.get(e))).toList();
    }

    private ProductResponse mapToProductResponse(Product product) {
        return ProductResponse.builder()
                .id(product.getId())
                .name(product.getName())
                .description(product.getDescription())
                .supplierId(product.getSupplierId())
                .build();
    }

    private ProductWithSalesResponse mapToProductWithSalesResponse(Product product, int quantity) {
        return ProductWithSalesResponse.builder()
                .id(product.getId())
                .name(product.getName())
                .description(product.getDescription())
                .salesQuantity(quantity)
                .build();
    }
}
