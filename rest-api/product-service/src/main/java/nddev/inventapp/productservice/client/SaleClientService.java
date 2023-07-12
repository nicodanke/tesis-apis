package nddev.inventapp.productservice.client;

import nddev.inventapp.productservice.model.Sale;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.service.annotation.GetExchange;
import org.springframework.web.service.annotation.HttpExchange;

import java.util.List;

@HttpExchange("/api/private/sales")
public interface SaleClientService {

    @GetExchange
    List<Sale> getAllByProductId(@RequestParam(value = "productId") Long productId);
}
