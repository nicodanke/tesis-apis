package nddev.tesis.supplierservice.controller;

import lombok.RequiredArgsConstructor;
import nddev.tesis.supplierservice.dto.SupplierResponse;
import nddev.tesis.supplierservice.dto.SupplierWithTopProducts;
import nddev.tesis.supplierservice.service.SupplierService;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/suppliers")
@RequiredArgsConstructor
public class SupplierController {

    private final SupplierService supplierService;

    @GetMapping
    @ResponseStatus(HttpStatus.OK)
    public List<SupplierResponse> getAllSuppliers(){
        return supplierService.getAllSuppliers();
    }

    @GetMapping(path = "/{id}/topProducts")
    @ResponseStatus(HttpStatus.OK)
    public SupplierWithTopProducts getSupplierWithTopProducts(@PathVariable(name = "id") Long id){
        return supplierService.getSupplierTopProducts(id);
    }

    @GetMapping(path = "/topProducts")
    @ResponseStatus(HttpStatus.OK)
    public List<SupplierWithTopProducts> getAllSupplierWithTopProducts(){
        return supplierService.getAllSuppliersTopProducts();
    }
}
