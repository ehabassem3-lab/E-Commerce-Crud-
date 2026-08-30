



import 'package:crud_e_commerce/view/actions.dart';

import 'getActions.dart';
import 'io.dart';
import 'menu.dart';

void runApp() {
  var isRunning = true;
  while (isRunning) {
     getAction(mainMenu) ;
        final choice = getInput('Choose an action: ');
      switch(choice){
                 case '1' : {
                  var choice1 = '' ;
                  do{
                    getAction(userMenu) ;
                    choice1 = getInput('Choose an action: ');
                   switch(choice1){
                     case '1' : createUser() ; 
                     case '2' : deleteUser()  ;
                     case '3' : updateUser() ; 
                     case '4' : viewUserCart() ; 
                     case '5' : clearUserCart() ; 
                     case '6' : viewAllUsers() ;
                     case '7' : choice1 = '7' ; 
                     default: showMessage("Enter a valid number") ;
                   }
                  }while(choice1 != '6') ;            
                        
                 } 
                 case '2' :{ 
                   var choice2 = ''  ;
                  do{
                    getAction(productMenu) ;
                      choice2 = getInput('Choose an action: ');
                   switch(choice2){
                     case '1' : addProdcutToUser() ; 
                     case '2' : deleteProductFormUser()  ;
                     case '3' : addProductToTheStore() ; 
                     case '4' : viewAllProducts() ; 
                     case '5' : choice2 = '5' ; 
                     default: showMessage("Enter a valid number") ;
                  }
                  }while(choice2 != '5') ;
                                  
                  } ;
                 case '3' : isRunning = false ;
                 default: "Enter a valid number" ;

 
                    }
  }
}