package com.dbms.web.controller.entity;

public class Top10Terrorist {
	private String month;
	private String gang_max;
	private int max;
	private String gang_min;
	private int min;
	
	Top10Terrorist(){}

	public Top10Terrorist(String month, String gang_max, int max, String gang_min, int min) {
		super();
		this.month = month;
		this.gang_max = gang_max;
		this.max = max;
		this.gang_min = gang_min;
		this.min = min;
	}

	public String getMonth() {
		return month;
	}

	public void setMonth(String month) {
		this.month = month;
	}

	public String getGang_max() {
		return gang_max;
	}

	public void setGang_max(String gang_max) {
		this.gang_max = gang_max;
	}

	public int getMax() {
		return max;
	}

	public void setMax(int max) {
		this.max = max;
	}

	public String getGang_min() {
		return gang_min;
	}

	public void setGang_min(String gang_min) {
		this.gang_min = gang_min;
	}

	public int getMin() {
		return min;
	}

	public void setMin(int min) {
		this.min = min;
	};
	
	

	

}
