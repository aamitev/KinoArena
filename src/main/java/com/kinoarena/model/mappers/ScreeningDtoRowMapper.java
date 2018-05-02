package com.kinoarena.model.mappers;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import com.kinoarena.dto.ScreeningDTO;

@Component
public class ScreeningDtoRowMapper implements RowMapper<ScreeningDTO> {

	@Autowired
	private MovieRowMapper movieRowMapper;

	public ScreeningDTO mapRow(ResultSet rs, int rowNum) throws SQLException {
		ScreeningDTO screening = null;
		try {
			screening = new ScreeningDTO(rs.getInt("id"), rs.getTimestamp("startTime").toLocalDateTime(),
					movieRowMapper.mapRow(rs, rowNum), rs.getInt("halls_id"));

		} catch (Exception e) {
			throw new SQLException(e);
		}

		return screening;
	}
}
