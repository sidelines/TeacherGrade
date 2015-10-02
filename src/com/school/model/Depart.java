
package com.school.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * 
 * 系别表
 * @author lenovo
 *
 */

@Entity
@Table(name="t_depart")
public class Depart {

	@Id
	@Column(name="departId")
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int departId;					//系别编号，自动增长
	
	@Column(name="departName",length=32)
	private String departName;				//系别名称
	
}
