package com.smhrd.model;

public class compDTO {
	private String comp_name;
	private int comp_cnt;
	
	public compDTO(String comp_name, int comp_cnt) {
		
		this.comp_name = comp_name;
		this.comp_cnt = comp_cnt;
	}
	public String getComp_name() {
		return comp_name;
	}
	public void setComp_name(String comp_name) {
		this.comp_name = comp_name;
	}
	public int getComp_cnt() {
		return comp_cnt;
	}
	public void setComp_cnt(int comp_cnt) {
		this.comp_cnt = comp_cnt;
	}
	
}
