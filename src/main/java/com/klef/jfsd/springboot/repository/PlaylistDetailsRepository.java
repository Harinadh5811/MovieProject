package com.klef.jfsd.springboot.repository;
import java.util.List;	

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import com.klef.jfsd.springboot.model.PlaylistDetails;


@Repository
public interface PlaylistDetailsRepository extends CrudRepository<PlaylistDetails, Integer>
{

	List<PlaylistDetails> findById(String id);
}
