package com.school.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * 
 * 管理员表
 * @author lenovo
 *
 */

@Entity
@Table(name = "t_admin")
public class Admin {

	@Id
	@Column(name = "adminId")
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int adminId;				//管理员Id编号，自动增长

	@Column(name = "adminName", length = 32)
	private String adminName;			//管理员姓名，账号，作为登录之用

	@Column(name = "adminPass", length = 32)
	private String adminPass;			//管理员密码

	@Column(name = "adminType", length = 32)
	private String adminType;			//管理员类型，以后分配分配权限备用，暂可为空

	@Column(name = "regDate", length = 32)
	private String regDate;				//管理员生成日期

}
