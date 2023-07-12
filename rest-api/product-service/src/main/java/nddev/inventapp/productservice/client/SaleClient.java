package nddev.inventapp.productservice.client;

import lombok.RequiredArgsConstructor;
import nddev.inventapp.productservice.model.Sale;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
@RequiredArgsConstructor
public class SaleClient {
    private final SaleClientService saleClientService;

    public List<Sale> getAllByProductId(Long productId){
        return saleClientService.getAllByProductId(productId);
    }
}
