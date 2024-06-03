package com.klef.jfsd.springboot.service;	
import com.klef.jfsd.springboot.model.User;
public interface UserService 
{

  
  public String userregister(User b);
  public String updateuser(User b);
  public User viewuserbyid(int uid);
  public User checkuserlogin(String email,String pwd);
  
}