package nddev.tesis.supplierservice.client;

import nddev.tesis.supplierservice.model.Product;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.service.annotation.GetExchange;
import org.springframework.web.service.annotation.HttpExchange;

import java.util.List;

@HttpExchange("/api/private/products")
public interface ProductClientService {

    @GetExchange(url = "/sales")
    List<Product> getAllWithSalesBySupplierId(@RequestParam(value = "supplierId") Long supplierId);
}
