package nddev.inventapp.productservice.grpc;

import com.google.protobuf.Empty;
import io.grpc.stub.StreamObserver;
import nddev.inventapp.productservice.service.ProductService;
import nddev.tesis.productservice.service.*;

import lombok.RequiredArgsConstructor;

import java.util.List;

@RequiredArgsConstructor
public class ProductServiceGrpcImpl extends ProductServiceGrpc.ProductServiceImplBase {

    private final ProductService productService;

    @Override
    public void getAllProducts(Empty request, StreamObserver<ProductResponseList> responseObserver) {

        List<nddev.inventapp.productservice.dto.ProductResponse> products = productService.getAllProducts();;

        ProductResponseList.Builder productResponseListBuilder = ProductResponseList.newBuilder();

        products.forEach((e) -> {
            ProductResponse productResponse = ProductResponse.newBuilder()
                    .setId(e.getId())
                    .setName(e.getName())
                    .setDescription(e.getDescription())
                    .setSupplierId(e.getSupplierId())
                    .build();
            productResponseListBuilder.addProductResponses(productResponse);
        });

        ProductResponseList productResponseList = productResponseListBuilder.build();

        responseObserver.onNext(productResponseList);
        responseObserver.onCompleted();
    }

    @Override
    public void getAllProductsWithSales(Empty request, StreamObserver<ProductWithSalesResponseList> responseObserver) {

        List<nddev.inventapp.productservice.dto.ProductWithSalesResponse> products = productService.getAllProductsWithSalesQuantity();;

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
