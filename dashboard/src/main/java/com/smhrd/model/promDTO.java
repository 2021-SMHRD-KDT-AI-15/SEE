package com.smhrd.model;

public class promDTO {
	private String prom_name;
	private int prom_cnt;
	private int prom_cnt_detail;
	private int prom_ing;
	private int prom_finish;
	private int prom_hold;
	public String getProm_name() {
		return prom_name;
	}
	public void setProm_name(String prom_name) {
		this.prom_name = prom_name;
	}
	public int getProm_cnt() {
		return prom_cnt;
	}
	public void setProm_cnt(int prom_cnt) {
		this.prom_cnt = prom_cnt;
	}
	public int getProm_cnt_detail() {
		return prom_cnt_detail;
	}
	public void setProm_cnt_detail(int prom_cnt_detail) {
		this.prom_cnt_detail = prom_cnt_detail;
	}
	public int getProm_ing() {
		return prom_ing;
	}
	public void setProm_ing(int prom_ing) {
		this.prom_ing = prom_ing;
	}
	public int getProm_finish() {
		return prom_finish;
	}
	public void setProm_finish(int prom_finish) {
		this.prom_finish = prom_finish;
	}
	public int getProm_hold() {
		return prom_hold;
	}
	public void setProm_hold(int prom_hold) {
		this.prom_hold = prom_hold;
	}
	public promDTO(String prom_name, int prom_cnt, int prom_cnt_detail, int prom_ing, int prom_finish, int prom_hold) {
		
		this.prom_name = prom_name;
		this.prom_cnt = prom_cnt;
		this.prom_cnt_detail = prom_cnt_detail;
		this.prom_ing = prom_ing;
		this.prom_finish = prom_finish;
		this.prom_hold = prom_hold;
	}
	
}
