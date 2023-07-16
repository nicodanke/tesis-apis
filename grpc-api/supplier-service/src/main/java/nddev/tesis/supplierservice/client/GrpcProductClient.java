package nddev.tesis.supplierservice.client;

import nddev.tesis.supplierservice.model.Product;
import nddev.tesis.productservice.service.*;
import net.devh.boot.grpc.client.inject.GrpcClient;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class GrpcProductClient {

    @GrpcClient("product-service")
    private ProductServiceGrpc.ProductServiceBlockingStub productStub;
    public List<Product> getAllBySupplier(Long supplierId){

        ProductWithSalesResponseList productWithSalesResponseList = productStub.getAllProductsWithSalesBySupplierId(ProductsOfSupplierRequest.newBuilder()
                .setSupplierId(supplierId)
                .build());

        return productWithSalesResponseList.getProductResponsesList().stream().map((e) ->
            Product.builder()
                    .id(e.getId())
                    .name(e.getName())
                    .description(e.getDescription())
                    .salesQuantity(e.getSalesQuantity())
                    .build()
        ).collect(Collectors.toList());
    }
}
