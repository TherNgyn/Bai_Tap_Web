package vn.iostart.dao;

import java.util.List;

import vn.iostart.models.UserModel;

public interface IUserDao {

	List<UserModel> findAll();
	
	UserModel findOne(int id);
	
	void insert(UserModel user);
}
