package com.school.util;

public class SubStringUtil {

	public static String[] sub(String pid)
	{
		String sub[]=new String[3];
		if(pid.length()==6)
		{
			sub[0]=pid.substring(0,3);
			sub[1]=pid.substring(3,6);
			sub[2]="";
		}
		else
		{
			sub[0]=pid.substring(0,3);
			sub[1]=pid.substring(3,6);
			sub[2]=pid.substring(6,9);
		}
		return sub;
	}
 }
