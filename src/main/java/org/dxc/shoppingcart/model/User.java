package org.dxc.shoppingcart.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name="user")
public class User {
	@Column(name="firstname")
	private String firstName;
	@Column(name="lastname")
	private String lastName;
	@Id
	@Column(name="username")
	private String userName;
	private String password;
	private String email;
	@Column(name="mobileno")
	private long mobileNo;
	private String role;
	@Override
	public String toString() {
		return "User [firstName=" + firstName + ", lastName=" + lastName + ", userName=" + userName + ", password="
				+ password + ", email=" + email + ", mobileNo=" + mobileNo + ", role=" + role + "]";
	}

}
