package com.school.model.add;

public class Category {
	private String category1;
	private String category2;
	private String category3;
	public String getCategory1() {
		return category1;
	}
	public void setCategory1(String category1) {
		this.category1 = category1;
	}
	public String getCategory2() {
		return category2;
	}
	public void setCategory2(String category2) {
		this.category2 = category2;
	}
	public String getCategory3() {
		return category3;
	}
	public void setCategory3(String category3) {
		this.category3 = category3;
	}
	@Override
	public String toString() {
		return "Category [category1=" + category1 + ", category2=" + category2
				+ ", category3=" + category3 + "]";
	}
	
	
}
