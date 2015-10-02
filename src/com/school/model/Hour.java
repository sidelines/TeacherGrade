package com.school.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


/**
 * 
 * 课时表
 * @author lenovo
 *
 */

@Entity
@Table(name="t_hour")
public class Hour {

	@Id
	@Column(name="hourId")
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int hourId;					//课时编号，自动增长
	
	@Column(name="hourNum")
	private int hourNum;				//课时数量
	
}
