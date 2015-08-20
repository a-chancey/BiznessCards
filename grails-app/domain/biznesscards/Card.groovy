package biznesscards

class Card {

    String firstName
    String lastName
    String companyName
    String jobTitle
    String homePhone
    String workPhone
    String mobilePhone
    String faxNumber
    String addressLineOne
    String addressLineTwo
    String addressCity
    String addressState
    String addressZip
    String email1
    String email2
    String websiteUrl
    String notes

    static constraints = {
        companyName nullable: true, blank: true
        jobTitle nullable: true, blank: true
        homePhone nullable: true, blank: true
        workPhone nullable: true, blank: true
        mobilePhone nullable: true, blank: true
        faxNumber nullable: true, blank: true
        addressLineOne nullable: true, blank: true
        addressLineTwo nullable: true, blank: true
        addressCity nullable: true, blank: true
        addressState nullable: true, blank: true
        addressZip nullable: true, blank: true
        email1 nullable: true, blank: true, email: true
        email2 nullable: true, blank: true, email: true
        websiteUrl nullable: true, blank: true, url: true
        notes nullable: true, blank: true
    }
}
