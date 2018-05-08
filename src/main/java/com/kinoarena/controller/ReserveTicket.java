package com.kinoarena.controller;

import java.util.LinkedList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kinoarena.model.dao.ReservationDAO;
import com.kinoarena.model.dao.ScreeningDao;
import com.kinoarena.model.vo.ReservationTicketType;
import com.kinoarena.model.vo.Screening;

@Controller
public class ReserveTicket {

	@Autowired
	ScreeningDao screeningDao;

	@Autowired
	ReservationDAO reservationDAO;

	@RequestMapping(method = RequestMethod.GET, value = "/reserve/{id}")
	public String reserveTicket(Model model, @PathVariable int id, HttpSession session) {
		try {
			if (session.getAttribute("loggedUser") == null) {
				return "redirect:/login";
			}
			Screening screening = screeningDao.getScreeningById(id);
			if (screening == null) {
				System.out.println(screening);
				return "redirect:/index";
			}
			List<ReservationTicketType> ticketType = reservationDAO.getTicketTypesByScreeningId(id);

			model.addAttribute("screening", screening);
			model.addAttribute("ticketTypes", ticketType);
			return "reserveTicket";
		} catch (Exception e) {
			e.printStackTrace();
			return "error";
		}
	}

	@RequestMapping(method = RequestMethod.POST, value = "/reserve/{id}")
	public String procesTicketTypes(Model model, @PathVariable int id, HttpSession session,
			HttpServletRequest request) {
		try {
			if (session.getAttribute("loggedUser") == null) {
				return "redirect:/login";
			}
			System.out.println(id);
			List<ReservationTicketType> ticketTypes = reservationDAO.getTicketTypesByScreeningId(id);
			List<ReservationTicketType> reserved = new LinkedList<ReservationTicketType>();
			for (ReservationTicketType type : ticketTypes) {
				int qty = Integer.parseInt(request.getParameter("qty" + type.getId()));
				for (int index = qty; index > 0; index--) {
					reserved.add(type);
				}
			}
			System.out.println(reserved.toString());

			return "forward:seats";
		} catch (Exception e) {
			e.printStackTrace();
			return "error";
		}
	}

}
