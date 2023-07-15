package nddev.tesis.saleservice.grpc;

import io.grpc.stub.StreamObserver;
import lombok.RequiredArgsConstructor;
import nddev.tesis.saleservice.service.*;

import java.util.List;

@RequiredArgsConstructor
public class SaleServiceGrpcImpl extends SaleServiceGrpc.SaleServiceImplBase {

    private final SaleService saleService;
    @Override
    public void getSalesByProductId(SaleRequest request, StreamObserver<SaleResponseList> responseObserver) {
        List<nddev.tesis.saleservice.dto.SaleResponse> sales = saleService.getSalesByProductId(request.getProductId());

        SaleResponseList.Builder saleResponseListBuilder = SaleResponseList.newBuilder();

        sales.forEach((e) -> {
            SaleResponse saleResponse = SaleResponse.newBuilder()
                    .setId(e.getId())
                    .setProductId(e.getProductId())
                    .setQuantity(e.getQuantity())
                    .setUnitPrice(e.getUnitPrice())
                    .build();
            saleResponseListBuilder.addSaleResponses(saleResponse);
        });

        SaleResponseList saleResponseList = saleResponseListBuilder.build();

        responseObserver.onNext(saleResponseList);
        responseObserver.onCompleted();
    }
}
