package com.table;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Pattern;
import jakarta.validation.constraints.Size;


@Entity
public class Signup {
@Id
@NotNull
@Size(min = 12, max = 12, message = "Aadhar number must be 12 digits")
@Column(name = "Adno")
long adno;
 
public long getAdno() {
	return adno;
}
public void setAdno(long adno) {
	this.adno = adno;
}
public String getFname() {
	return fname;
}
public void setFname(String fname) {
	this.fname = fname;
}
public int getAge() {
	return age;
}
public void setAge(int age) {
	this.age = age;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public long getPhone() {
	return phone;
}
public void setPhone(long phone) {
	this.phone = phone;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getGender() {
	return gender;
}
public void setGender(String gender) {
	this.gender = gender;
}
public String getMandal() {
	return mandal;
}
public void setMandal(String mandal) {
	this.mandal = mandal;
}
public String getVillage() {
	return village;
}
public void setVillage(String village) {
	this.village = village;
}
public String getDist() {
	return dist;
}
public void setDist(String dist) {
	this.dist = dist;
}
@Column(name="Fullname")
@NotNull
 
@Pattern(regexp = "^[A-Za-z ]+$", message = "Full name can only contain letters and spaces.")
String fname;
@Column(name="Age")
@NotNull
@Min(value = 18, message = "Age must be 18 or older")
@Max(value = 120, message = "Age must be less than or equal to 120")
int age;
@Column(name="Email")
@NotNull
@Email(message = "Email should be valid")
String email;
@Column(name="Phonenumber")
@NotNull
@Size(min = 10)
@Pattern(regexp = "[0-9]{10}", message = "Phone number must be exactly 10 digits.")
long  phone;
@Column(name="Password")
@NotNull
String password;
@Column(name="Gender")
@NotNull
String gender;
@Column(name="Mandal")
@NotNull
String mandal;
@Column(name="Village")
@NotNull
String village;
@NotNull
@Column(name="Dist")
String dist;

}

