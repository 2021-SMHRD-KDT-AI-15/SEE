package model;

public class popDTO {
	private String pop_gu;
	private String pop_dong;
	private int pop_male;
	private int pop_female;
	public popDTO(String pop_gu, String pop_dong, int pop_male, int pop_female) {
		
		this.pop_gu = pop_gu;
		this.pop_dong = pop_dong;
		this.pop_male = pop_male;
		this.pop_female = pop_female;
	}
	public String getPop_gu() {
		return pop_gu;
	}
	public void setPop_gu(String pop_gu) {
		this.pop_gu = pop_gu;
	}
	public String getPop_dong() {
		return pop_dong;
	}
	public void setPop_dong(String pop_dong) {
		this.pop_dong = pop_dong;
	}
	public int getPop_male() {
		return pop_male;
	}
	public void setPop_male(int pop_male) {
		this.pop_male = pop_male;
	}
	public int getPop_female() {
		return pop_female;
	}
	public void setPop_female(int pop_female) {
		this.pop_female = pop_female;
	}

}
