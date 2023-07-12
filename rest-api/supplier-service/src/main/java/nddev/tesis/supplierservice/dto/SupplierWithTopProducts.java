package nddev.tesis.supplierservice.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import nddev.tesis.supplierservice.model.Product;

import java.util.List;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class SupplierWithTopProducts {
    private Long id;
    private String name;
    private String address;
    private String phone;
    private String email;
    private List<Product> products;
}
