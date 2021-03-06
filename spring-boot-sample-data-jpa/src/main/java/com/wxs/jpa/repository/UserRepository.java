package com.wxs.jpa.repository;

import com.wxs.jpa.domain.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

/**
 * @Description:
 * @Author:Wuxisnhui
 * @Date:2017/6/12 16:57
 */
public interface UserRepository extends JpaRepository<User, Integer> {
	List<User> findByUsernameAndPassword(String username,String password);
}
