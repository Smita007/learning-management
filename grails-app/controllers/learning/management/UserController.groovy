package learning.management

class UserController {

    def create() {

    }
    def save(){
        Person myUser= new Person([firstName:params.firstName, lastName:params.lastName,
                               email:params.Email, Age:params.int('Age')])
        myUser.save()

        redirect(action: "show", params: [id: myUser.id])
    }
    def show(){
        Person myPerson=Person.get(params.id)
        return[recentuser: myPerson]

    }
    def list(){

        [allCreatedUser: Person.list()]

    }
}
