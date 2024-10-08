package com.table;

import javax.persistence.Column;
import javax.persistence.Entity;

@Entity
public class Complain {
@Column(name="Adno")
long Adno;
@Column(name="Name")
String Name;
@Column(name="Mandal")
String Mandal;
@Column(name="Complain")
String Complain;
@Column(name="Feedback")
int Feedback;
public long getAdno() {
	return Adno;
}
public void setAdno(long adno) {
	Adno = adno;
}
public String getName() {
	return Name;
}
public void setName(String name) {
	Name = name;
}
public String getMandal() {
	return Mandal;
}
public void setMandal(String mandal) {
	Mandal = mandal;
}
public String getComplain() {
	return Complain;
}
public void setComplain(String complain) {
	Complain = complain;
}
public int getFeedback() {
	return Feedback;
}
public void setFeedback(int feedback) {
	Feedback = feedback;
}
public String getStatus() {
	return Status;
}
public void setStatus(String status) {
	Status = status;
}
@Column(name="Status")
String Status;
}
