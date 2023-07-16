package nddev.inventapp.productservice.repository;

import nddev.inventapp.productservice.model.Product;
import org.springframework.data.repository.ListCrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ProductRepository extends ListCrudRepository<Product, Long> {
    List<Product> findAllBySupplierId(Long supplierId);
}
