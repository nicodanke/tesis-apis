package nddev.inventapp.productservice.controller;

import jakarta.ws.rs.QueryParam;
import lombok.RequiredArgsConstructor;
import nddev.inventapp.productservice.dto.ProductResponse;
import nddev.inventapp.productservice.dto.ProductWithSalesResponse;
import nddev.inventapp.productservice.service.ProductService;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/private/products")
@RequiredArgsConstructor
public class ProductPrivateController {

    private final ProductService productService;

    @GetMapping(path = "/sales")
    @ResponseStatus(HttpStatus.OK)
    public List<ProductWithSalesResponse> getAllProductsWithSales(@QueryParam(value = "supplierId") Long supplierId){
        if(supplierId == null) {
            return productService.getAllProductsWithSalesQuantity();
        }
        return productService.getProductsWithSalesQuantityBySupplierId(supplierId);
    }
}
