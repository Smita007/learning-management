package learning.management

class FormController {

    def saveUser() {
        println("Parameters received")
//        println params.firstName
//        println params.lastName
//        println params.Email
//        println params.password

        User myUser = new User(myFirstName:params.firstName,mylastName:params.lastName,
                                myEmail:params.Email,myAge:params.age)

        myUser.mytask()
        return [recentlySavedUser: myUser]

    }


}
