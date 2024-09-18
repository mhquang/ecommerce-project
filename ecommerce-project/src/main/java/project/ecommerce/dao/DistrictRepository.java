package project.ecommerce.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import org.springframework.web.bind.annotation.CrossOrigin;
import project.ecommerce.entity.District;

import java.util.List;

@CrossOrigin("http://localhost:4200/")
@RepositoryRestResource
public interface DistrictRepository extends JpaRepository<District, Integer> {
    List<District> findByCityId(@Param("id") int id);
}
