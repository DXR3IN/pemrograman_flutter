package com.irfan.nilai.repository;

import java.util.Optional;
import org.springframework.data.jpa.repository.JpaRepository;

import com.irfan.nilai.entity.Nilai;
public interface NilaiRepository extends JpaRepository<Nilai,Long>{

    public Optional<Nilai> findNilaiById(Long id);
    
} 
