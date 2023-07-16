package nddev.tesis.supplierservice.grpc;

import com.google.protobuf.Empty;
import io.grpc.stub.StreamObserver;
import lombok.RequiredArgsConstructor;
import nddev.tesis.supplierservice.model.Supplier;
import nddev.tesis.supplierservice.service.*;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@RequiredArgsConstructor
public class SupplierServiceGrpcImpl extends SupplierServiceGrpc.SupplierServiceImplBase {

    private final SupplierService supplierService;
    @Override
    public void getAllSuppliersWithTopProducts(Empty request, StreamObserver<SupplierResponseList> responseObserver) {
        List<nddev.tesis.supplierservice.dto.SupplierWithTopProducts> suppliers = supplierService.getAllSuppliersTopProducts();

        SupplierResponseList.Builder supplierResponseListBuilder = SupplierResponseList.newBuilder();

        suppliers.forEach((e) -> {

            SupplierResponse.Builder supplierResponseBuilder = SupplierResponse.newBuilder()
                    .setId(e.getId())
                    .setName(e.getName())
                    .setAddress(e.getAddress())
                    .setEmail(e.getEmail());

            Optional.ofNullable(e.getPhone()).ifPresent(supplierResponseBuilder::setPhone);

            e.getProducts().forEach((p) -> {
                ProductWithSalesResponse2 productWithSalesResponse2 = ProductWithSalesResponse2.newBuilder()
                                .setId(p.getId())
                                .setName(p.getName())
                                .setDescription(p.getDescription())
                                .setSalesQuantity(p.getSalesQuantity())
                                .build();
                supplierResponseBuilder.addProducts(productWithSalesResponse2);
            });
            supplierResponseListBuilder.addSupplierResponses(supplierResponseBuilder.build());
        });

        SupplierResponseList supplierResponseList = supplierResponseListBuilder.build();

        responseObserver.onNext(supplierResponseList);
        responseObserver.onCompleted();
    }
}
