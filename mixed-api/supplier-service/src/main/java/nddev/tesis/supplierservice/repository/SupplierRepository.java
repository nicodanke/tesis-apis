package nddev.tesis.supplierservice.repository;

import nddev.tesis.supplierservice.model.Supplier;
import org.springframework.data.repository.ListCrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface SupplierRepository extends ListCrudRepository<Supplier, Long> {
}
