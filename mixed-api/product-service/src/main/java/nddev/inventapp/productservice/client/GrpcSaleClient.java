package nddev.inventapp.productservice.client;

import nddev.inventapp.productservice.model.Sale;
import nddev.tesis.saleservice.service.SaleRequest;
import nddev.tesis.saleservice.service.SaleResponseList;
import nddev.tesis.saleservice.service.SaleServiceGrpc;
import net.devh.boot.grpc.client.inject.GrpcClient;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class GrpcSaleClient {

    @GrpcClient("sale-service")
    private SaleServiceGrpc.SaleServiceBlockingStub saleStub;
    public List<Sale> getAllByProductId(Long productId){

        SaleResponseList saleResponseList = saleStub. getSalesByProductId(SaleRequest.newBuilder()
                .setProductId(productId)
                .build());

        return saleResponseList.getSaleResponsesList().stream().map((e) ->
            Sale.builder()
                    .id(e.getId())
                    .productId(e.getProductId())
                    .quantity(e.getQuantity())
                    .unitPrice(e.getUnitPrice())
                    .build()
        ).toList();
    }
}
