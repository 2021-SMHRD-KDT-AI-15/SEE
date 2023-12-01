package com.smhrd.model;

public class jobDTO {
	private String quarter;
	private int general_goal;
	private int general_job;
	private int general_rate;
	private int young_goal;
	private int young_job;
	private int young_rate;
	private int old_goal;
	private int old_job;
	private int old_rate;
	public String getQuarter() {
		return quarter;
	}
	public void setQuarter(String quarter) {
		this.quarter = quarter;
	}
	public int getGeneral_goal() {
		return general_goal;
	}
	public void setGeneral_goal(int general_goal) {
		this.general_goal = general_goal;
	}
	public int getGeneral_job() {
		return general_job;
	}
	public void setGeneral_job(int general_job) {
		this.general_job = general_job;
	}
	public int getGeneral_rate() {
		return general_rate;
	}
	public void setGeneral_rate(int general_rate) {
		this.general_rate = general_rate;
	}
	public int getYoung_goal() {
		return young_goal;
	}
	public void setYoung_goal(int young_goal) {
		this.young_goal = young_goal;
	}
	public int getYoung_job() {
		return young_job;
	}
	public void setYoung_job(int young_job) {
		this.young_job = young_job;
	}
	public int getYoung_rate() {
		return young_rate;
	}
	public void setYoung_rate(int young_rate) {
		this.young_rate = young_rate;
	}
	public int getOld_goal() {
		return old_goal;
	}
	public void setOld_goal(int old_goal) {
		this.old_goal = old_goal;
	}
	public int getOld_job() {
		return old_job;
	}
	public void setOld_job(int old_job) {
		this.old_job = old_job;
	}
	public int getOld_rate() {
		return old_rate;
	}
	public void setOld_rate(int old_rate) {
		this.old_rate = old_rate;
	}
	public jobDTO(String quarter, int general_goal, int general_job, int general_rate, int young_goal, int young_job,
			int young_rate, int old_goal, int old_job, int old_rate) {
		
		this.quarter = quarter;
		this.general_goal = general_goal;
		this.general_job = general_job;
		this.general_rate = general_rate;
		this.young_goal = young_goal;
		this.young_job = young_job;
		this.young_rate = young_rate;
		this.old_goal = old_goal;
		this.old_job = old_job;
		this.old_rate = old_rate;
	}
	
}
