package learning.management

class FormController {

    def saveUser() {
        println("Parameters received")
        println params.firstName
        println params.lastName
        println params.Email
        println params.password

        return [firstName: params.firstName, lastName: params.lastName, Email: params.Email,
                currentDate: new Date(), rating:23, age:20]
    }

    def thankyou() {
        println "thank you action executed"
        println params
        render("""Thank You for sign-up.you have been signed-up now""")
    }

}
