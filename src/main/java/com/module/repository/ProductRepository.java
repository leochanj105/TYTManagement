package com.module.repository;

import com.module.model.ProductEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;

@Repository
public interface ProductRepository extends JpaRepository<ProductEntity, Integer> {
    @Modifying
    @Transactional
    @Query("update ProductEntity pro set pro.name =:qName, pro.userByUserId.id=:qUserId," +
            " pro.description=:qDescription, pro.produceDate=:qProduceDate,pro.pic = :qPic where pro.id=:qId")
    void updateProduct(@Param("qName") String name, @Param("qUserId") int userId, @Param("qDescription") String description,
                    @Param("qProduceDate") Date produceDate, @Param("qId") int id, @Param("qPic") String pic);
}
