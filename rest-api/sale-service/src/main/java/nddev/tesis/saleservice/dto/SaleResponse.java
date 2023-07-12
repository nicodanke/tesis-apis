package nddev.tesis.saleservice.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class SaleResponse {
    private Long id;
    private Long productId;
    private int quantity;
    private double unitPrice;
}
