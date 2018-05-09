package com.kinoarena.tests;

import static org.junit.Assert.assertEquals;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.kinoarena.config.SpringWebConfig;
import com.kinoarena.model.dao.AddressDao;
import com.kinoarena.model.dao.CinemaDAO;
import com.kinoarena.model.dao.MovieDao;
import com.kinoarena.model.dao.ScreeningDao;
import com.kinoarena.model.dao.UserDAO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = SpringWebConfig.class)
@WebAppConfiguration
public class DaoTests {

	@Autowired
	private UserDAO userDao;
	
	@Autowired
	private AddressDao addressDao;
	
	@Autowired
	private CinemaDAO cinemaDao;
	
	@Autowired
	private MovieDao movieDao;
	
	@Autowired
	private ScreeningDao screeningDao;
	
	@Test
	public void testUserId() {
		int testId = 1;
		int realId = userDao.getUserId("admin@admin.bg");
		assertEquals(testId, realId);
	}
	
	@Test
	public void testAddressId() {
		int testAddressId = 8;
		int realAddressId = addressDao.getAddress("admin address", "1255", "adminCity").getId();
		assertEquals(testAddressId, realAddressId);
	}
	
	@Test
	public void testStreetAddress() {
		String testStreetAddress = "admin address";
		String realStreetAddress = addressDao.getAddress("admin address", "1255", "adminCity").getAddress();
		assertEquals(testStreetAddress, realStreetAddress);
	}
	
	@Test
	public void testCinemaId() {
		int testCinemaId = 5;
		int realCinemaId = cinemaDao.getCinemaByName("Arena West").getId();
		assertEquals(testCinemaId, realCinemaId);
	}
	
	@Test
	public void testCinemaGSM() {
		String testGsm = "0891254723";
		String realGsm = cinemaDao.getCinemaById(5).getGsm();
		assertEquals(testGsm, realGsm);
	}
	
	
	@Test
	public void testMovie() {
		String testMovieName = "Maze runner : The Death cure";
		String realMovieName = movieDao.getMovieById(12).getTitle();
		assertEquals(testMovieName, realMovieName);
	}
	
	@Test
	public void testScreening() {
		String testStartTime = "2018-05-09T10:30";
		String realStartTime = screeningDao.getScreeningById(20).getStartTime().toString();
		assertEquals(testStartTime, realStartTime);
	}

}
