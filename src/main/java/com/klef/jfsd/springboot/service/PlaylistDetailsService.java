package com.klef.jfsd.springboot.service;	
import java.util.List;

import com.klef.jfsd.springboot.model.Playlist;
import com.klef.jfsd.springboot.model.PlaylistDetails;
public interface PlaylistDetailsService 
{


	public List<PlaylistDetails> viewplaylist(int pid);

	public List<PlaylistDetails> viewallplaylist(int pid);

	String addtoplaylist(PlaylistDetails b);
	

}