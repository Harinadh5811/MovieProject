package com.klef.jfsd.springboot.service;	
import java.util.List;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.klef.jfsd.springboot.model.Playlist;
import com.klef.jfsd.springboot.repository.PlaylistRepository;
@Service
public class PlaylistImpl implements PlaylistService
{
  @Autowired
  private PlaylistRepository playlistRepository;

@Override
public String addplaylist(Playlist b) {
	playlistRepository.save(b);
	return "Playlist Created Successfully..!";
}
@Override
public List<Playlist> allplaylists() {
    return (List<Playlist>) playlistRepository.findAll(); 
}
@Override
public List<Playlist> myplaylists() {
    return (List<Playlist>) playlistRepository.findAll(); 
}
@Override
public String deleteplaylist(int uid) {
    Optional<Playlist> obj = playlistRepository.findById(uid);
    String msg = null;

    if (obj.isPresent()) {
        Playlist p = obj.get();
        playlistRepository.delete(p);
        msg = "Playlist Deleted Successfully";
    } else {
        msg = "Playlist Not Found";
    }

    return msg;
}

}