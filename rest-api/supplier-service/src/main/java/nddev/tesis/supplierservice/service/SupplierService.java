package nddev.tesis.supplierservice.service;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import nddev.tesis.supplierservice.client.ProductClient;
import nddev.tesis.supplierservice.dto.SupplierResponse;
import nddev.tesis.supplierservice.dto.SupplierWithTopProducts;
import nddev.tesis.supplierservice.model.Product;
import nddev.tesis.supplierservice.model.Supplier;
import nddev.tesis.supplierservice.repository.SupplierRepository;
import org.springframework.stereotype.Service;

import java.util.*;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
@Slf4j
public class SupplierService {

    private final SupplierRepository supplierRepository;
    private final ProductClient productClient;

    public List<SupplierResponse> getAllSuppliers() {
        List<Supplier> suppliers = supplierRepository.findAll();

        return suppliers.stream().map(this::mapToSupplierResponse).toList();
    }

    public SupplierWithTopProducts getSupplierTopProducts(Long id) {
        Supplier supplier = supplierRepository.findById(id).get();

        List<Product> productsOfSupplier = productClient.getAllByProductId(id);

        productsOfSupplier.sort(Comparator.comparing(Product::getSalesQuantity).reversed());

        return mapToSupplierWithTopProducts(supplier, productsOfSupplier.stream().limit(5).collect(Collectors.toList()));
    }

    public List<SupplierWithTopProducts> getAllSuppliersTopProducts() {
        List<Supplier> suppliers = supplierRepository.findAll();

        return suppliers.stream().map((e) -> {
            List<Product> productsOfSupplier = productClient.getAllByProductId(e.getId());
            productsOfSupplier.sort(Comparator.comparing(Product::getSalesQuantity).reversed());
            return mapToSupplierWithTopProducts(e, productsOfSupplier.stream().limit(5).collect(Collectors.toList()));
        }).collect(Collectors.toList());
    }

    private SupplierResponse mapToSupplierResponse(Supplier supplier) {
        return SupplierResponse.builder()
                .id(supplier.getId())
                .name(supplier.getName())
                .email(supplier.getEmail())
                .email(supplier.getEmail())
                .address(supplier.getAddress())
                .build();
    }

    private SupplierWithTopProducts mapToSupplierWithTopProducts(Supplier supplier, List<Product> products) {
        return SupplierWithTopProducts.builder()
                .id(supplier.getId())
                .name(supplier.getName())
                .email(supplier.getEmail())
                .email(supplier.getEmail())
                .address(supplier.getAddress())
                .products(products)
                .build();
    }
}
