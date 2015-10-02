package com.school.util;

import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtil {

	public static SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
	public static SimpleDateFormat sf = new SimpleDateFormat("hh:mm:ss");
	public static SimpleDateFormat sd = new SimpleDateFormat("yyyy-MM-dd");
	public static String getCurDate(){
		return sdf.format(new Date());
	}
	public static String getDate()
	{
		return sd.format(new Date());
	}
}
