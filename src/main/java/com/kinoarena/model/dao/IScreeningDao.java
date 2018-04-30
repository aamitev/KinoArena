package com.kinoarena.model.dao;

import java.util.List;

import com.kinoarena.model.vo.Screening;

public interface IScreeningDao {
	
	public List<Screening> getAllAvalibleScreenings();
}
