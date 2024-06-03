package com.klef.jfsd.springboot.model;

import jakarta.persistence.Column;		
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="playlist_table")
public class Playlist 
{

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name=" priid")
	private int pid;
	@Column(name=" user_id")
	private String id;
	@Column(name=" playlist_name",nullable=false,length = 50)
	private String pname;
	@Column(name=" playlist_type",nullable=false)
	private String type; 
	public String getId() {
		return id;
	}
	public void setId(String id2) {
		this.id = id2;
	}
	public String getType() {
		return type;
	}
	public void setType(String ptype) {
		this.type = ptype;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}

}