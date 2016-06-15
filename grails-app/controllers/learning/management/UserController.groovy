package learning.management

class UserController {

    def create() {

    }
    def save(){
        User myUser= new User([myFirstName:params.firstName, myLastName:params.lastName,
                               myEmail:params.Email, myAge:params.int('Age')])
        session.lastSavedUser= myUser
        if(session.allUsers == null) {
            session.allUsers = []
        }
        session.allUsers.push(myUser)

        redirect(action: "show")
    }
    def show(){
        return[recentuser: session.lastSavedUser]

    }
    def list(){

        [allCreatedUser: session.allUsers]

    }
}
