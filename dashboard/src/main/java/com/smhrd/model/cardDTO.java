package com.smhrd.model;

public class cardDTO {
	private String news_tit;
	private String notice_tit;
	private String bulletin_tit;

	public cardDTO(String news_tit, String notice_tit, String bulletin_tit, String cardnews_date) {
		
		this.news_tit = news_tit;
		this.notice_tit = notice_tit;
		this.bulletin_tit = bulletin_tit;
		this.cardnews_date = cardnews_date;
	}
	public String getNews_tit() {
		return news_tit;
	}
	public void setNews_tit(String news_tit) {
		this.news_tit = news_tit;
	}
	public String getNotice_tit() {
		return notice_tit;
	}
	public void setNotice_tit(String notice_tit) {
		this.notice_tit = notice_tit;
	}
	public String getBulletin_tit() {
		return bulletin_tit;
	}
	public void setBulletin_tit(String bulletin_tit) {
		this.bulletin_tit = bulletin_tit;
	}
	public String getCardnews_date() {
		return cardnews_date;
	}
	public void setCardnews_date(String cardnews_date) {
		this.cardnews_date = cardnews_date;
	}
	String cardnews_date;
}
