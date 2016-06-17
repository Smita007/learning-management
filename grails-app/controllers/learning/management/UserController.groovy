package learning.management

class UserController {

    def create() {

    }
    def save(){
        Person myUser= new Person([firstName:params.firstName, lastName:params.lastName,
                               email:params.Email, Age:params.int('Age')])
        myUser.save()
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
