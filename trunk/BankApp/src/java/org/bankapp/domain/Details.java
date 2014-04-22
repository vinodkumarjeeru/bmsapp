package org.bankapp.domain;
// Generated Apr 21, 2014 10:52:35 AM by Hibernate Tools 3.2.1.GA

/**
 * Details generated by hbm2java
 */
public class Details implements java.io.Serializable {

    private Long detailsId;
    private String firstName;
    private String lastName;
    private String mobile;
    private String emailId;
    private byte[] picture;
    private byte[] signature;
    private byte[] documents;
    private String accountType;
    private String securityQuestion;
    private String securityAnswer;
    private String DateOfBirth;
    private Double minimumBalance;

    public Details(Long detailsId, String firstName, String lastName, String mobile, String emailId, byte[] picture, byte[] signature, byte[] documents, String accountType, String securityQuestion, String securityAnswer, String DateOfBirth, Double minimumBalance) {
        this.detailsId = detailsId;
        this.firstName = firstName;
        this.lastName = lastName;
        this.mobile = mobile;
        this.emailId = emailId;
        this.picture = picture;
        this.signature = signature;
        this.documents = documents;
        this.accountType = accountType;
        this.securityQuestion = securityQuestion;
        this.securityAnswer = securityAnswer;
        this.DateOfBirth = DateOfBirth;
        this.minimumBalance = minimumBalance;
    }

    public Details(Long detailsId) {
        this.detailsId = detailsId;
    }

    public Details() {
    }

    public Long getDetailsId() {
        return detailsId;
    }

    public void setDetailsId(Long detailsId) {
        this.detailsId = detailsId;
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

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getEmailId() {
        return emailId;
    }

    public void setEmailId(String emailId) {
        this.emailId = emailId;
    }

    public byte[] getPicture() {
        return picture;
    }

    public void setPicture(byte[] picture) {
        this.picture = picture;
    }

    public byte[] getSignature() {
        return signature;
    }

    public void setSignature(byte[] signature) {
        this.signature = signature;
    }

    public byte[] getDocuments() {
        return documents;
    }

    public void setDocuments(byte[] documents) {
        this.documents = documents;
    }

    public String getAccountType() {
        return accountType;
    }

    public void setAccountType(String accountType) {
        this.accountType = accountType;
    }

    public String getSecurityQuestion() {
        return securityQuestion;
    }

    public void setSecurityQuestion(String securityQuestion) {
        this.securityQuestion = securityQuestion;
    }

    public String getSecurityAnswer() {
        return securityAnswer;
    }

    public void setSecurityAnswer(String securityAnswer) {
        this.securityAnswer = securityAnswer;
    }

    public String getDateOfBirth() {
        return DateOfBirth;
    }

    public void setDateOfBirth(String DateOfBirth) {
        this.DateOfBirth = DateOfBirth;
    }

    public Double getMinimumBalance() {
        return minimumBalance;
    }

    public void setMinimumBalance(Double minimumBalance) {
        this.minimumBalance = minimumBalance;
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 89 * hash + (this.detailsId != null ? this.detailsId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final Details other = (Details) obj;
        if (this.detailsId != other.detailsId && (this.detailsId == null || !this.detailsId.equals(other.detailsId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Details{" + "detailsId=" + detailsId + ", firstName=" + firstName + ", lastName=" + lastName + ", mobile=" + mobile + ", emailId=" + emailId + ", picture=" + picture + ", signature=" + signature + ", documents=" + documents + ", accountType=" + accountType + ", securityQuestion=" + securityQuestion + ", securityAnswer=" + securityAnswer + ", DateOfBirth=" + DateOfBirth + ", minimumBalance=" + minimumBalance + '}';
    }
    
    
}