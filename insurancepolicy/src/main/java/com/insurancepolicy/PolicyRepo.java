package com.insurancepolicy;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

public interface PolicyRepo extends CrudRepository<Policy, Integer>{
	
	public List<Policy> findByLoginId(String loginId);
	public void deleteByName(String name);
	
}
