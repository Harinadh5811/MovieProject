package com.klef.jfsd.springboot.model;

import jakarta.persistence.Column;		
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="playlist_details")
public class PlaylistDetails
{

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name=" detailsid")
	private int detailsid;
	@Column(name=" playlist_id")
	private String id;
	@Column(name=" movie_id",nullable=false)
	private String mid;
	public int getDetailsid() {
		return detailsid;
	}
	public void setDetailsid(int detailsid) {
		this.detailsid = detailsid;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	
	

}