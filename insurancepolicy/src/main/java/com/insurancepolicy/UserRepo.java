package com.insurancepolicy;

import java.util.Optional;

import org.springframework.data.repository.CrudRepository;

public interface UserRepo extends CrudRepository<User, String>
{
	public Optional<User> findByPassword(String password);
	public Optional<User> findByLoginid(String loginid);
}
