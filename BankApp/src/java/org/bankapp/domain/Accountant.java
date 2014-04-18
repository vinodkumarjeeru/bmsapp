/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.bankapp.domain.impl;

import java.sql.Date;
import java.util.Arrays;

/**
 *
 * @author Lalli
 */
public class Accountant{
    
    private int accountnumber;
    private String firstName;
    private String name;
    private String lastName;
    private Date dateOfBirth;
    private String designation;
    private String status;
    private String gender;
    private int phonenumber;
    private String streetName;
    private String dooNO;
    private String city;
    private String districtName;
    private String stateName;
    private String countryName;
    private int pincode;
    private String doccuments;
    private String email;
    private byte[] profilePicture;
    private byte[] fingerPrint;

    public int getAccountnumber() {
        return accountnumber;
    }

    public void setAccountnumber(int accountnumber) {
        this.accountnumber = accountnumber;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public Date getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(Date dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public String getDesignation() {
        return designation;
    }

    public void setDesignation(String designation) {
        this.designation = designation;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public int getPhonenumber() {
        return phonenumber;
    }

    public void setPhonenumber(int phonenumber) {
        this.phonenumber = phonenumber;
    }

    public String getStreetName() {
        return streetName;
    }

    public void setStreetName(String streetName) {
        this.streetName = streetName;
    }

    public String getDooNO() {
        return dooNO;
    }

    public void setDooNO(String dooNO) {
        this.dooNO = dooNO;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getDistrictName() {
        return districtName;
    }

    public void setDistrictName(String districtName) {
        this.districtName = districtName;
    }

    public String getStateName() {
        return stateName;
    }

    public void setStateName(String stateName) {
        this.stateName = stateName;
    }

    public String getCountryName() {
        return countryName;
    }

    public void setCountryName(String countryName) {
        this.countryName = countryName;
    }

    public int getPincode() {
        return pincode;
    }

    public void setPincode(int pincode) {
        this.pincode = pincode;
    }

    public String getDoccuments() {
        return doccuments;
    }

    public void setDoccuments(String doccuments) {
        this.doccuments = doccuments;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public byte[] getProfilePicture() {
        return profilePicture;
    }

    public void setProfilePicture(byte[] profilePicture) {
        this.profilePicture = profilePicture;
    }

    public byte[] getFingerPrint() {
        return fingerPrint;
    }

    public void setFingerPrint(byte[] fingerPrint) {
        this.fingerPrint = fingerPrint;
    }

   
    
    
    
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Accountent [accountnumber=");
		builder.append(accountnumber);
		builder.append(", firstName=");
		builder.append(firstName);
		builder.append(", name=");
		builder.append(name);
		builder.append(", lastName=");
		builder.append(lastName);
		builder.append(", designation=");
		builder.append(designation);
		builder.append(", status=");
		builder.append(status);
		builder.append(", gender=");
		builder.append(gender);
		builder.append(", phonenumber=");
		builder.append(phonenumber);
		builder.append(", streetName=");
		builder.append(streetName);
		builder.append(", dooNO=");
		builder.append(dooNO);
		builder.append(", city=");
		builder.append(city);
		builder.append(", districtName=");
		builder.append(districtName);
		builder.append(", stateName=");
		builder.append(stateName);
		builder.append(", countryName=");
		builder.append(countryName);
		builder.append(", pincode=");
		builder.append(pincode);
		builder.append(", doccuments=");
		builder.append(doccuments);
		builder.append(", email=");
		builder.append(email);
		builder.append(", profilePicture=");
		builder.append(Arrays.toString(profilePicture));
		builder.append(", fingerPrint=");
		builder.append(Arrays.toString(fingerPrint));
		builder.append("]");
		return builder.toString();
	}
    
    
    
}
