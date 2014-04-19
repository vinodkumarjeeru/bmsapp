/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.bankapp.domain;

import java.sql.Date;
import java.util.Arrays;

/**
 *
 * @author cmc5
 */
public class Clerk {

    private int id;
    private String firstName;
    private String lastName;
    private String fatherName;
    private int age;
    private Date dob;
    private String gender;
    private int doorNo;
    private String streetName;
    private String city;
    private String state;
    private String country;
    private String secQuestion;
    private byte[] profilePic;
    private long phoneNumber;
    private String qualification;
    private String email;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public void setFatherName(String fatherName){
        this.fatherName=fatherName;
    }
    
    public String getFatherName(){
        return fatherName;
    }
    
    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public Date getDob() {
        return dob;
    }

    public void setDob(Date dob) {
        this.dob = dob;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public int getDoorNo() {
        return doorNo;
    }

    public void setDoorNo(int doorNo) {
        this.doorNo = doorNo;
    }

    public String getStreetName() {
        return streetName;
    }

    public void setStreetName(String streetName) {
        this.streetName = streetName;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }
    public void setState(String state){
        this.state=state;
    }
    
    public String getState(){
        return state;
    }
    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getSecQuestion() {
        return secQuestion;
    }

    public void setSecQuestion(String secQuestion) {
        this.secQuestion = secQuestion;
    }

    public byte[] getProfilePic() {
        return profilePic;
    }

    public void setProfilePic(byte[] profilePic) {
        this.profilePic = profilePic;
    }

    public long getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(int phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getQualification() {
        return qualification;
    }

    public void setQualification(String qualification) {
        this.qualification = qualification;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
        @Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Set [id=");
		builder.append(id);
		builder.append(", firstName=");
		builder.append(firstName);
		builder.append(", lastName=");
		builder.append(lastName);
		builder.append(", fatherName=");
		builder.append(fatherName);
		builder.append(", age=");
		builder.append(age);
		builder.append(", dob=");
		builder.append(dob);
		builder.append(", gender=");
		builder.append(gender);
		builder.append(", doorNo=");
		builder.append(doorNo);
		builder.append(", streetName=");
		builder.append(streetName);
		builder.append(", city=");
		builder.append(city);
		builder.append(", state=");
		builder.append(state);
		builder.append(", country=");
		builder.append(country);
		builder.append(", secQuestion=");
		builder.append(secQuestion);
		builder.append(", profilePic=");
		builder.append(Arrays.toString(profilePic));
		builder.append(", phoneNumber=");
		builder.append(phoneNumber);
		builder.append(", qualification=");
		builder.append(qualification);
		builder.append(", email=");
		builder.append(email);
		builder.append("]");
		return builder.toString();
	}
	

}
