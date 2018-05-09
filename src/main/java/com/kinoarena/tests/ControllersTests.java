package com.kinoarena.tests;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.forwardedUrl;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.TestContext;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;

import com.kinoarena.config.SpringWebConfig;
import com.kinoarena.controller.CinemaController;
import com.kinoarena.controller.HomeController;
import com.kinoarena.controller.MovieDetailsController;
import com.kinoarena.controller.ProfileControler;
import com.kinoarena.controller.UserController;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = {TestContext.class, WebAppContext.class})
@WebAppConfiguration
public class ControllersTests {

	@Autowired
	private MockMvc mockMvc;
	@Autowired
	private CinemaController cinema;
	@Autowired
	private HomeController home;
	@Autowired
	private MovieDetailsController movies;
	@Autowired
	private ProfileControler profile;
	@Autowired
	private UserController user;
	
	
	@Test(expected = Exception.class)
	public void testHomeControllerGET() throws Exception {
		mockMvc.perform(get("/index"))
				.andExpect(status().isOk())
				.andExpect(forwardedUrl("/index.jsp"));
	}
	
	
	
	
}
