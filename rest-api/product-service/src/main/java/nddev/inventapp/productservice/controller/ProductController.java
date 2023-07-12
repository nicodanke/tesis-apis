package nddev.inventapp.productservice.controller;

import jakarta.ws.rs.QueryParam;
import lombok.RequiredArgsConstructor;
import nddev.inventapp.productservice.dto.ProductResponse;
import nddev.inventapp.productservice.dto.ProductWithSalesResponse;
import nddev.inventapp.productservice.service.ProductService;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/products")
@RequiredArgsConstructor
public class ProductController {

    private final ProductService productService;

    @GetMapping
    @ResponseStatus(HttpStatus.OK)
    public List<ProductResponse> getAllProducts(){
        return productService.getAllProducts();
    }

    @GetMapping(path = "/sales")
    @ResponseStatus(HttpStatus.OK)
    public List<ProductWithSalesResponse> getAllProductsWithSales(@QueryParam(value = "supplierId") Long supplierId){
        if(supplierId == null) {
            return productService.getAllProductsWithSalesQuantity();
        }
        return productService.getProductsWithSalesQuantityBySupplierId(supplierId);
    }
}
