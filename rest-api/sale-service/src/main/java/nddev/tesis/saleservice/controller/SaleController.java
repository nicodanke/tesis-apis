package nddev.tesis.saleservice.controller;

import jakarta.ws.rs.QueryParam;
import lombok.RequiredArgsConstructor;
import nddev.tesis.saleservice.dto.SaleResponse;
import nddev.tesis.saleservice.service.SaleService;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/sales")
@RequiredArgsConstructor
public class SaleController {

    private final SaleService saleService;

    @GetMapping()
    @ResponseStatus(HttpStatus.OK)
    public List<SaleResponse> getSalesByProductId(@QueryParam(value = "productId") Long productId){
        if(productId == null){
            return saleService.getAllSales();
        }
        return saleService.getSalesByProductId(productId);
    }
}
