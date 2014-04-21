package org.bankapp.domain;
// Generated Apr 21, 2014 10:52:35 AM by Hibernate Tools 3.2.1.GA

/**
 * Address generated by hbm2java
 */
public class Address implements java.io.Serializable {

    private Long addressId;
    private String doorNo;
    private String streetName;
    private String city;
    private String country;
    private String district;
    private String state;
    private Long pincode;

    public Address() {
    }

    public Address(Long addressId) {
        this.addressId = addressId;
    }

    public Address(Long addressId, String doorNo, String streetName, String city, String country, String district, String state, Long pincode) {
        this.addressId = addressId;
        this.doorNo = doorNo;
        this.streetName = streetName;
        this.city = city;
        this.country = country;
        this.district = district;
        this.state = state;
        this.pincode = pincode;
    }

    public long getAddressId() {
        return this.addressId;
    }

    public void setAddressId(Long addressId) {
        this.addressId = addressId;
    }

    public String getDoorNo() {
        return this.doorNo;
    }

    public void setDoorNo(String doorNo) {
        this.doorNo = doorNo;
    }

    public String getStreetName() {
        return this.streetName;
    }

    public void setStreetName(String streetName) {
        this.streetName = streetName;
    }

    public String getCity() {
        return this.city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getCountry() {
        return this.country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getDistrict() {
        return this.district;
    }

    public void setDistrict(String district) {
        this.district = district;
    }

    public String getState() {
        return this.state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public Long getPincode() {
        return this.pincode;
    }

    public void setPincode(Long pincode) {
        this.pincode = pincode;
    }
}
