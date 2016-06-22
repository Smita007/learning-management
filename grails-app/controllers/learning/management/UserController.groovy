package learning.management

class UserController {

    def create() {
        [myUser: new Person()]

    }
    def save(){
        Person myUser= new Person([firstName:params.firstName, lastName:params.lastName,
                               email:params.email, age:params.int('age')])
        myUser.save()
        println myUser.errors
        if(myUser.hasErrors()){
            render(view: "create", model: [myUser: myUser])
            return
        }

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
        myPerson.age=params.age.toInteger()
        myPerson.save(flush: true)
        redirect(action: "list")


    }

    def delete(){
        Person personInstance=Person.get(params.id)
        personInstance.delete(flush: true)
        redirect(action: "list")
    }
    def search(){

    }
    def test(){
        String s = params.name
        List splitted= s.split(" ")
        List myPerson
        if(params.email && params.name && params.age) {
            myPerson = Person.findAllByEmailOrFirstNameOrLastNameOrAge("%${params.email}%", "${splitted[0]}",
                    "${splitted[1]}","${params.age}" )
        }
        else if(params.email && params.name){
            myPerson = Person.findAllByEmailOrFirstNameOrLastName("%${params.email}%", "${splitted[0]}",
                    "${splitted[1]}")
        }
        else if(params.name && params.age){
            myPerson =Person.findAllByFirstNameOrLastNameOrAge("${splitted[0]}",
                    "${splitted[1]}","${params.age}")
        }
        else if(params.email && params.age){
            myPerson=Person.findAllByEmailAndAge("%${params.email}%","${params.age}")
        }
       else if(params.email){
             myPerson= Person.findAllByEmailLike("%${params.email}%")
            println "hello"
        }
        else if(params.name){

            if(splitted.size==2){
                println splitted[0]
                println splitted[1]
                myPerson= Person.findAllByFirstNameAndLastName("${splitted[0]}", "${splitted[1]}")
            }
            else if(splitted.size()==1) {
                println params.name
                myPerson = Person.findAllByFirstNameLike("%${splitted[0]}%")
                println "myPerson-->> ${myPerson}"
            }
        }
        else if(params.age){
            myPerson= Person.findAllByAge("${params.age}")
            println "h"
        }
        //List myPerson= Person.findAllByEmailLikeOrFirstNameLikeOrAge("%${params.query}%","%${params.query1}%",
              //"${params.query2}")
       // println myPerson.id
        render(view:"search", model: [personInstance: myPerson])

    }

}
