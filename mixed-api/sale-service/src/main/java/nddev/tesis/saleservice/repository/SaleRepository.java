package nddev.tesis.saleservice.repository;

import nddev.tesis.saleservice.model.Sale;
import org.springframework.data.repository.ListCrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface SaleRepository extends ListCrudRepository<Sale, Long> {
    List<Sale> findAllByProductId(Long productId);
}
