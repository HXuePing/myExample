package com.ping.dao;

import java.util.List;

import com.ping.domain.QueryResult;
import com.ping.domain.Suggestion;

public interface ISuggestionDao {

	void saveSuggestion(Suggestion s);

	List<Suggestion> getSuggestion(Integer id);

	List<Suggestion> getAllSuggestion();
	public QueryResult getPageSuggestion(Integer index,Integer pagesize);

}