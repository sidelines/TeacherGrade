package com.school.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * 
 * 课程表
 * @author lenovo
 *
 */

@Entity
@Table(name="t_subject")
public class Subject {

	@Id
	@Column(name="subjectId")
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int subjectId;						//课程Id编号,自动增长
	
	@Column(name="subjectName",length=32)
	private String subjectName;			//课程名称
	
}
