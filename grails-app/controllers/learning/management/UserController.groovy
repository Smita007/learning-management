package learning.management

class UserController {

    def create() {

    }
    def save(){
        Person myUser= new Person([firstName:params.firstName, lastName:params.lastName,
                               email:params.Email, Age:params.int('Age')])
        myUser.save()

        redirect(action: "list")
    }
    def show(){
        Person myPerson=Person.get(params.id)
        return[recentuser: myPerson]

    }
    def edit(){
        return[edit1: Person.get(params.id)]
    }
    def list(){

        [allCreatedUser: Person.list()]

    }
    def update(){
        println "hi $params"
        Person myPerson=Person.get(params.id)
        myPerson.firstName=params.firstName
        myPerson.lastName=params.lastName
        myPerson.email=params.email
        myPerson.Age=params.Age.toInteger()
        myPerson.save(flush: true)
        redirect(action: "list")


    }

    def delete(){
        Person personInstance=Person.get(params.id)
        personInstance.delete(flush: true)
        redirect(action: "list")
    }
}
