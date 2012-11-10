package hotelposada


import grails.*;
class PruebaFuncionalWebTests extends grails.util.WebTest {

    // Unlike unit tests, functional tests are sometimes sequence dependent.
    // Methods starting with 'test' will be run automatically in alphabetical order.
    // If you require a specific sequence, prefix the method name (following 'test') with a sequence
    // e.g. test001XclassNameXListNewDelete

   void testLoginFuncional() {
        invoke '/'
        clickLink(label:'Ingresar al sistema')
        setInputField(name:'login',value:'administrador')
        setInputField(name:'password',value:'administrador1')
        setInputField(name:'passwordConfirm',value:'administrador1')
        setInputField(name:'email',value:'administrador@hotel.com')
        clickButton(label:'Registrarse')
    }

}