package nddev.tesis.saleservice.service;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import nddev.tesis.saleservice.dto.SaleResponse;
import nddev.tesis.saleservice.model.Sale;
import nddev.tesis.saleservice.repository.SaleRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
@Slf4j
public class SaleService {

    private final SaleRepository saleRepository;

    public List<SaleResponse> getSalesByProductId(Long productId) {
        List<Sale> sales = saleRepository.findAllByProductId(productId);

        return sales.stream().map(this::mapToSaleResponse).toList();
    }

    private SaleResponse mapToSaleResponse(Sale sale) {
        return SaleResponse.builder()
                .id(sale.getId())
                .quantity(sale.getQuantity())
                .unitPrice(sale.getUnitPrice())
                .productId(sale.getProductId())
                .build();
    }
}
