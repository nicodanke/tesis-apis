package nddev.tesis.supplierservice.model;

import lombok.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class Product {
    private Long id;
    private String name;
    private String description;
    private Integer salesQuantity;
}
