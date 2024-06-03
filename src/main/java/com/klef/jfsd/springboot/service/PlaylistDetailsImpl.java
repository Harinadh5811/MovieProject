package com.klef.jfsd.springboot.service;	
import java.util.List;	
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.PlaylistDetails;
import com.klef.jfsd.springboot.repository.PlaylistDetailsRepository;


@Service
public class PlaylistDetailsImpl implements PlaylistDetailsService
{
  @Autowired
  private PlaylistDetailsRepository pdr;


@Override
public String addtoplaylist(PlaylistDetails b) {
	pdr.save(b);
	return "Added to playlist successfully..!";
}

  @Override
  public List<PlaylistDetails> viewplaylist(int pid) {
      return pdr.findById(String.valueOf(pid));
  }

@Override
public List<PlaylistDetails> viewallplaylist(int pid) {
	return pdr.findById(String.valueOf(pid));
}
}