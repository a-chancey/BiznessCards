package biznesscards

class BootStrap {

    def init = { servletContext ->
        new Card(firstName: "Aaron",
                lastName: "Chancey",
                jobTitle: "Computer Wizard",
                addressCity: "Dublin",
                addressLineOne: "2491 Abbotsford Way",
                addressLineTwo: "",
                addressState: "OH",
                addressZip: "43016",
                companyName: "Manifest",
                homePhone: "",
                mobilePhone: "",
                notes: "").save()
    }
    def destroy = {
    }
}
