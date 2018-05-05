package com.kinoarena.model.dao;

import java.util.List;
import java.util.Map;

import com.kinoarena.model.vo.Screening;

public interface IScreeningDao {
	
	public List<Screening> getAllAvalibleScreenings();
	public Map<String, Map<String, List<Screening>>> getScreeningsByMovieIdAndDate(int id, String date);
}
