package com.school.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * 
 * 教学工作量表
 * @author lenovo
 *
 */

@Entity
@Table(name="t_teachWork")
public class TeachWork {

	@Id
	@Column(name="id")
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;									//教学工作量Id ，自动增长
	
	@Column(name="subjectId")
	private int subjectId;							//课程Id编号，外键
	
	@Column(name="hourId")		
	private int hourId;								//课时Id编号，外键
	
	@Column(name="cid")
	private int cid;								//审核员Id编号，外键
	
	@Column(name="tid",length=32)
	private String tid;								//教师Id编号，外键
	
	@Column(name="clazz",length=32)
	private String clazz;							//所带班级
	
	@Column(name="number")
	private int number;								//班级人数
	
	@Column(name="term",length=32)
	private String term;							//学期，包括学年和学期
	
	@Column(name="checkState1")
	private int checkState1;						//系审核员审核状态
	
	@Column(name="checkState2")
	private int checkState2;						//院审核员审核状态
	
	@Column(name="remark1",length=255)
	private String remark1;							//系审核员审核备注
	
	@Column(name="remark2",length=255)
	private String remark2;							//院审核员审核备注
	
	@Column(name="evidence",length=255)
	private String evidence;						//证明材料
	
	@Column(name="score")
	private int score;								//该项工作量所得分数
	
	@Column(name="addDate",length=32)
	private String addDate;							//该项工作量添加日期
}

