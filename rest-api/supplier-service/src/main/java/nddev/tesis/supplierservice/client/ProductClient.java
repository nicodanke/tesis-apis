package nddev.tesis.supplierservice.client;

import lombok.RequiredArgsConstructor;
import nddev.tesis.supplierservice.model.Product;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
@RequiredArgsConstructor
public class ProductClient {
    private final ProductClientService productClientService;

    public List<Product> getAllByProductId(Long supplierId){
        return productClientService.getAllWithSalesBySupplierId(supplierId);
    }
}
