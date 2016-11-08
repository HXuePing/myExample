package com.ping.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="suggestion")
public class Suggestion {
	private Integer suggestionId;
	private String suggestionNumber;
	private String suggestionName;	
	private String suggestionDecription;
	private String suggestionType;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public Integer getSuggestionId() {
		return suggestionId;
	}
	public String getSuggestionNumber() {
		return suggestionNumber;
	}
	public void setSuggestionNumber(String suggestionNumber) {
		this.suggestionNumber = suggestionNumber;
	}
	public void setSuggestionId(Integer suggestionId) {
		this.suggestionId = suggestionId;
	}
	public String getSuggestionDecription() {
		return suggestionDecription;
	}
	public void setSuggestionDecription(String suggestionDecription) {
		this.suggestionDecription = suggestionDecription;
	}
	public String getSuggestionType() {
		return suggestionType;
	}
	public void setSuggestionType(String suggestionType) {
		this.suggestionType = suggestionType;
	}
	
	public String getSuggestionName() {
		return suggestionName;
	}
	public void setSuggestionName(String suggestionName) {
		this.suggestionName = suggestionName;
	}
	
}
