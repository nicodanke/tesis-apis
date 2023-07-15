package nddev.inventapp.productservice.grpc;

import io.grpc.stub.StreamObserver;
import nddev.inventapp.productservice.service.ProductService;
import nddev.tesis.productservice.service.*;

import lombok.RequiredArgsConstructor;

import java.util.List;

@RequiredArgsConstructor
public class ProductServiceGrpcImpl extends ProductServiceGrpc.ProductServiceImplBase {

    private final ProductService productService;
    @Override
    public void getAllProductsWithSalesBySupplierId(ProductsOfSupplierRequest request, StreamObserver<ProductWithSalesResponseList> responseObserver) {

        List<nddev.inventapp.productservice.dto.ProductWithSalesResponse> products = productService.getProductsWithSalesQuantityBySupplierId(request.getSupplierId());;

        ProductWithSalesResponseList.Builder productWithSalesResponseListBuilder = ProductWithSalesResponseList.newBuilder();

        products.forEach((e) -> {
            ProductWithSalesResponse productWithSalesResponse = ProductWithSalesResponse.newBuilder()
                    .setId(e.getId())
                    .setName(e.getName())
                    .setDescription(e.getDescription())
                    .setSalesQuantity(e.getSalesQuantity())
                    .build();
            productWithSalesResponseListBuilder.addProductResponses(productWithSalesResponse);
        });

        ProductWithSalesResponseList productWithSalesResponseList = productWithSalesResponseListBuilder.build();

        responseObserver.onNext(productWithSalesResponseList);
        responseObserver.onCompleted();
    }
}
