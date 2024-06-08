package com.klef.jfsd.springboot.controller;

import java.util.List;		
import org.springframework.ui.Model;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.klef.jfsd.springboot.model.Playlist;
import com.klef.jfsd.springboot.model.PlaylistDetails;
import com.klef.jfsd.springboot.model.User;
import com.klef.jfsd.springboot.service.PlaylistDetailsService;
import com.klef.jfsd.springboot.service.PlaylistService;
import com.klef.jfsd.springboot.service.UserService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class ClientController 
{
//	@Autowired
//	private HttpSession session; // Injected HttpSession

	@Autowired
	private UserService userService;

	@Autowired
	private PlaylistService playlistService;
	
	@Autowired
	private PlaylistDetailsService pds;

	@GetMapping("/")
	public String main()
	{
		return "index";
	}

	@GetMapping("userreg")
	public ModelAndView userreg()
	{
		ModelAndView mv = new ModelAndView();
	    mv.setViewName("userreg");
	    return mv;
	}

	@PostMapping("insertuser")
	public ModelAndView insertaction(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView();
		String msg = null;

		try 
		{
			String name = request.getParameter("name");
			String gender = request.getParameter("gender");
			String dob = request.getParameter("dob"); 
			String email = request.getParameter("email");
			String pwd = request.getParameter("pwd");
			String location = request.getParameter("location");
			String contact = request.getParameter("contact");

			User user = new User();
			user.setName(name);
			user.setGender(gender);
			user.setDateofbirth(dob); 
			user.setEmail(email);
			user.setPassword(pwd);
			user.setLocation(location);
			user.setContact(contact);
			user.setActive(true);

			msg = userService.userregister(user);

			mv.setViewName("userlogin");
			mv.addObject("message", msg);
		}
		catch (Exception e) 
		{
			mv.setViewName("userreg");
			msg = e.getMessage();
			mv.addObject("message", "Email or Mobile Number already Exist..!");
		}
		return mv;
	}

	@GetMapping("createplaylist")
	public ModelAndView createplaylist(@RequestParam("id") int uid)
	{
		ModelAndView mv = new ModelAndView();
	    mv.setViewName("createplaylist");
	    mv.addObject("uid",uid);
	    System.out.println(uid);
	    return mv;
	}

	@PostMapping("insertplaylist")
	public ModelAndView insertplaylistaction(HttpServletRequest request) {
	    ModelAndView mv = new ModelAndView();
	    String msg = "Playlist Added Successfully!";

	    try {
	        String id = request.getParameter("id");
	        String pname = request.getParameter("pname");
	        String ptype = request.getParameter("ptype");
	        Playlist playlist = new Playlist();
	        playlist.setId(id);
	        playlist.setPname(pname);
	        playlist.setType(ptype);

	        msg = playlistService.addplaylist(playlist);

	        mv.setViewName("redirect:/viewmyplaylist?id=" + id);
	        mv.addObject("message", "Playlist Created");
	    } catch (Exception e) {
	        mv.setViewName("createplaylist");
	        msg = e.getMessage();
	        mv.addObject("message", msg);
	    }
	    return mv;
	}
	
	@GetMapping("saveplaylist")
	public ModelAndView saveplaylist(@RequestParam("id") int uid)
	{
		ModelAndView mv = new ModelAndView();
	    mv.setViewName("saveplaylist");
	    mv.addObject("uid",uid);
	    System.out.println(uid);
	    return mv;
	}

	@GetMapping("addtoplaylist")
	public ModelAndView addtoplaylist(@RequestParam("mid") String imdbID,@RequestParam("id") int Id)
	{
		ModelAndView mv = new ModelAndView();
	    mv.setViewName("addtoplaylist");
	    List<Playlist> playlist = playlistService.allplaylists();
		mv.addObject("allplaylist", playlist);
	    mv.addObject("mid",imdbID);
	    mv.addObject("Id",Id);
	    System.out.println(imdbID+" "+Id);
	    return mv;
	}
	
	@PostMapping("addtoplaylist")
	public ModelAndView addtoplaylistaction(HttpServletRequest request) {
	    ModelAndView mv = new ModelAndView();
	    String msg = "Movie added to playlist..!!";

	    try {
	        String id = request.getParameter("id");
	        String pid = request.getParameter("pid");
	        
	        PlaylistDetails playlistd = new PlaylistDetails();
	        playlistd.setId(pid);
	        playlistd.setMid(id);

	        msg = pds.addtoplaylist(playlistd);
	        mv.setViewName("redirect:/viewmyplaylist?id=" + id);
	        mv.addObject("message", "Playlist Created");
	    } catch (Exception e) {
	        mv.setViewName("findmovies");
	        msg = e.getMessage();
	        mv.addObject("message", msg);
	    }
	    return mv;
	}
	
	@GetMapping("userlogin")
	public ModelAndView userlogin()
	{
		ModelAndView mv = new ModelAndView();
	    mv.setViewName("userlogin");
	    return mv;
	}

	@PostMapping("checkuserlogin")
	public ModelAndView checkuserlogin(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView();
		String email = request.getParameter("email");
		String pwd = request.getParameter("pwd");

		User user = userService.checkuserlogin(email, pwd);

		if (user != null)
		{
			// Session attributes set
			HttpSession session = request.getSession();
			session.setAttribute("uid", user.getId());
			session.setAttribute("uname", user.getName());
			session.setAttribute("uemail", user.getEmail());
			session.setAttribute("ulocation", user.getLocation());
			session.setAttribute("ucontactno", user.getContact());
			session.setAttribute("ugender", user.getGender());
			session.setAttribute("udob", user.getDateofbirth());

			mv.addObject("user", user);
			mv.setViewName("userhome");
		}
		else
		{
			mv.setViewName("userlogin");
			mv.addObject("message", "Login Failed");
		}
		return mv;
	}

	@GetMapping("userhome")
	public ModelAndView userhome()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("userhome");
		return mv;
	}
	
	@GetMapping("viewallplaylist")
	public ModelAndView viewallplaylist()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("viewallplaylist");
		List<Playlist> playlist = playlistService.allplaylists();
		mv.addObject("allplaylist", playlist);
		System.out.println(playlist);
		return mv;
	}
	
	@GetMapping("viewmyplaylist")
	public ModelAndView viewmyplaylist()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("viewmyplaylist");
		List<Playlist> playlist = playlistService.allplaylists();
		mv.addObject("allplaylist", playlist);
		mv.addObject("addtoplaylist",playlist);
		System.out.println(playlist);
		return mv;
	}
	
	
	@GetMapping("delete/{uid}/{pid}")
	public String deleteaction(@PathVariable("uid") int uid, @PathVariable("pid") int pid)
	{
	    playlistService.deleteplaylist(pid);
	    System.out.println("Deleted Playlist Pid:"+pid);
	    System.out.println("Returning to playists id :"+uid);
	    return "redirect:/viewmyplaylist?id=" + uid;
	}
	@GetMapping("viewplaylist/{uid}/{pid}")
	public ModelAndView viewplaylistaction(@PathVariable("uid") int uid, @PathVariable("pid") int pid) {
	    ModelAndView mv = new ModelAndView();
	    List<PlaylistDetails> playlistDetails = pds.viewplaylist(pid);
	    mv.setViewName("viewplaylistdetails");
	    mv.addObject("playlistDetails", playlistDetails);
	    mv.addObject("uid", uid);
	    mv.addObject("pid", pid);
	    return mv;
	}
	
	@GetMapping("allplaylist/{uid}/{pid}")
	public ModelAndView allplaylistaction(@PathVariable("uid") int uid, @PathVariable("pid") int pid) {
	    ModelAndView mv = new ModelAndView();
	    List<PlaylistDetails> playlistDetails = pds.viewallplaylist(pid);
	    mv.setViewName("viewallplaylistdetails");
	    mv.addObject("playlistDetails", playlistDetails);
	    mv.addObject("uid", uid);
	    mv.addObject("pid", pid);
	    return mv;
	}
	
	
}
