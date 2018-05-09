package com.kinoarena.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.kinoarena.model.dao.ReservationDAO;
import com.kinoarena.model.dao.ScreeningDao;
import com.kinoarena.model.dao.SeatDAO;
import com.kinoarena.model.vo.ReservationTicketType;
import com.kinoarena.model.vo.Screening;
import com.kinoarena.model.vo.Seat;
import com.kinoarena.model.vo.Ticket;

@Controller
public class ReserveTicket {

	@Autowired
	ScreeningDao screeningDao;

	@Autowired
	ReservationDAO reservationDAO;
	@Autowired
	SeatDAO seatDao;

	@RequestMapping(method = RequestMethod.GET, value = "/reserve/{id}")
	public String reserveTicket(Model model, @PathVariable int id, HttpSession session) {
		try {
			if (session.getAttribute("loggedUser") == null) {
				return "redirect:/login";
			}
			Screening screening = screeningDao.getScreeningById(id);
			if (screening == null) {
				return "redirect:/index";
			}
			List<ReservationTicketType> ticketType = reservationDAO.getTicketTypesByScreeningId(id);
			session.setAttribute("screening", screening);
			model.addAttribute("screening", screening);
			model.addAttribute("ticketTypes", ticketType);
			return "reserveTicket";
		} catch (Exception e) {
			e.printStackTrace();
			return "error";
		}
	}

	@RequestMapping(method = RequestMethod.POST, value = "/reserve", params = { "hallId" })
	public String procesTicketTypes(Model model, @RequestParam("hallId") int hallId, HttpSession session,
			HttpServletRequest request) {
		try {
			if (session.getAttribute("loggedUser") == null) {
				return "redirect:/login";
			}
			int screeningId = ((Screening) session.getAttribute("screening")).getId();

			List<ReservationTicketType> ticketTypes = reservationDAO.getTicketTypesByScreeningId(screeningId);
			Map<String, List<ReservationTicketType>> reservedTypes = new HashMap<String, List<ReservationTicketType>>();
			int ticketNumbers = 0;
			for (ReservationTicketType type : ticketTypes) {
				int qty = Integer.parseInt(request.getParameter("qty" + type.getId()));
				for (int index = qty; index > 0; index--) {
					if (index == qty) {
						reservedTypes.put(type.getType(), new ArrayList<ReservationTicketType>());
					}
					reservedTypes.get(type.getType()).add(type);
					ticketNumbers++;
				}
				// here we validate the tickets
				if ((ticketNumbers > Ticket.MAX_TICKET_NUMBER) || (ticketNumbers <= Ticket.MIN_TICKET_NUMBER)) {
					model.addAttribute("ticketTypes", ticketTypes);
					model.addAttribute("error", "Invalid number of tickets");
					return "reserveTicket";
				}
			}
			session.setAttribute("ticketNumbers", ticketNumbers);
			model.addAttribute("reservedTicketTypes", reservedTypes);
			model.addAttribute("ticketNumbers", ticketNumbers);
			System.out.println(reservedTypes.toString());
			List<Seat> reservedSeats = seatDao.getAllReservedSeatsByScreeningID(screeningId);
			Map<Byte, List<Seat>> seats = seatDao.getAllSeadsByHall(hallId);
			System.out.println(seats.toString());
			System.out.println(reservedSeats.toString());
			for (Entry<Byte, List<Seat>> row : seats.entrySet()) {
				for (Seat seat : row.getValue()) {
					if (reservedSeats.contains(seat)) {
						seat.setTaken(true);
					}
				}
			}
			model.addAttribute("seats", seats);
			return "seats";
		} catch (Exception e) {
			e.printStackTrace();
			return "error";
		}
	}

	@RequestMapping(method = RequestMethod.POST, value = "/finalize")
	public String finalizeReservation(Model model, HttpSession session, HttpServletRequest request) {
		try {
			if (session.getAttribute("loggedUser") == null) {
				return "redirect:/login";
			}
			int screeningId = ((Screening) session.getAttribute("screening")).getId();


			return "seats";
		} catch (Exception e) {
			e.printStackTrace();
			return "error";
		}
	}
}
