package com.klef.jfsd.springboot.service;	
import java.util.Optional;	
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.klef.jfsd.springboot.model.User;
import com.klef.jfsd.springboot.repository.UserRepository;
@Service
public class UserServiceImpl implements UserService
{
  @Autowired
  private UserRepository userRepository;
  
  
  @Override
  public String userregister(User b) {
    userRepository.save(b);
    return "User Added Successfully";
  }

  @Override
  public String updateuser(User b) {
    User blo=userRepository.findById(b.getId()).get();
    blo.setName(b.getName());
    blo.setPassword(b.getPassword());
    blo.setContact(b.getPassword());
    
    userRepository.save(blo);
    return "User Update Successfully";
  }

  @Override
  public User viewuserbyid(int uid) {
    Optional<User> obj=userRepository.findById(uid);
    if(obj.isPresent())
         {
           User blo = obj.get();
           
           return blo;
         }
         else
         {
           return null;
         }
  }

  @Override
  public User checkuserlogin(String email, String pwd) {
    return userRepository.checkuserlogin(email, pwd);

  }
}