package hotelposada

import grails.test.*

class UsersTests extends GrailsUnitTestCase {
   
    void testRevisarUsers() {
        def usersLista = [new Users(login:"admin",password:"password",email:"algo@hotmail.com"),
            new Users(login:"admin",password:"password",email:"algo@hotmail.com"),
            new Users(login:"alguien",password:"123kljk23",email:"prueba@hotmail.com"),
            new Users(login:"someone",password:"secreto",email:"yo@hotmail.com"),]
            mockDomain(Users,usersLista);
    }
    void testValidarConstraintsUser()
    {
        def usersLista = [new Users(login:"admin",password:"password",email:"algo@hotmail.com"),
            new Users(login:"admin",password:"password",email:"algo@hotmail.com"),
            new Users(login:"alguien",password:"123kljk23",email:"prueba@hotmail.com"),
            new Users(login:"someone",password:"secreto",email:"yo@hotmail.com"),]
            mockDomain(Users,usersLista);
            mockForConstraintsTests(Users,usersLista);
            def user = new Users(login:"administrador",password:"password123",email:"algo@hotmail.com");
            assertTrue user.validate();
    }
}
