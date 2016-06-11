package learning.management

class FormController {

    def saveUser() {
        println("Parameters received")
        println params.firstName
        println params.lastName
        println params.Email
        println params.password

        redirect(controller: "form", action: "thankyou", params: [name: "you"])
    }

    def thankyou() {
        println "thank you action executed"
        println params
        render("""Thank You for sign-up.you have been signed-up now""")
    }
}
