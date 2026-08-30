


import 'package:crud_e_commerce/data/Products.dart';
import 'package:crud_e_commerce/data/Users.dart';
import '../logic/users_logic.dart' as userLogic;
import '../logic/products_logic.dart' as productLogic;
import 'io.dart';


void createUser(){
  final name = getInput("Enter The User Namne ") ;
  if(name.isEmpty){
   showMessage("Must Enter A Name To Create User ");
  }else{
   showMessage(userLogic.createUser(name)!) ;
  }
}


void deleteUser(){
  final id = getInput("Enter User Id") ;
  if(id.isEmpty){
   showMessage("Must Enter A Id To Delete User ");

  }else{
    showMessage(userLogic.deleteUser(int.parse(id))) ;
  }
  
}

void updateUser(){
  final id = getInput(' Enter Id') ;
  final newName = getInput(' Enter The New Name ') ;
  showMessage(userLogic.updateUser(int.parse(id), newName)) ;
}

void viewUserCart(){
   final id = getInput("Enter The User Id ") ;
  var cart = userLogic.viewUserCart(int.parse(id));
  if( cart != null){
     if(!cart.isNotEmpty){
      showMessage("User Cart Is Empty ") ;
     }else{
            for(var item in cart){
              var entries = item.entries ; 
               for(var entry in entries){
                      print(" Name : ${entry.key.name}      Quanity   ${entry.value}       Price Per One : ${entry.key.price}      Total Price : ${entry.key.price * entry.value }") ;
               }
            }
     }
  }

}


void clearUserCart(){
  final id = getInput("Enter The User id ") ;
  showMessage(userLogic.clearUserCart(int.parse(id)));


}



void addProdcutToUser(){

      final userId = getInput("Enter The User id ") ;
      final productId = getInput("Enter The Product id") ;
      showMessage(productLogic.addProductToUser(int.parse(productId),int.parse(userId)));
}


void deleteProductFormUser(){
   final userId = getInput("Enter The User id") ;
   final productId = getInput("Enter The Product id ") ;
       showMessage(productLogic.deleteProductFromUser(int.parse(productId),int.parse( userId))) ;


}

void addProductToTheStore(){
    final name = getInput("Enter The Prodcut Name ") ;
  final productId = getInput("Enter the Product id ") ;
  final price = getInput("Enter The price ") ;
   productLogic.addProductToStore(int.parse(productId), name,double.parse( price));
}
void viewAllProducts(){
     for(var item in products){
        print(" name: ${item.name }, price: ${item.price}, id: ${item.id }") ;
     }
}

void viewAllUsers(){
  for(var item in users){
    print(" name    :   ${item.name }    ,   id    : ${item.id }") ;
  }
}
