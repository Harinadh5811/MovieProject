package com.klef.jfsd.springboot.service;	
import java.util.List;
import java.util.Optional;

import com.klef.jfsd.springboot.model.Playlist;
public interface PlaylistService 
{
  public  String addplaylist(Playlist b);

  public String deleteplaylist(int uid);
List<Playlist> allplaylists();

List<Playlist> myplaylists();

}