import 'dart:math';

import 'package:crud_e_commerce/data/Products.dart';



class User {
    String name ="";
   int id = 0 ;
   List<Map<Product , int >> products = [{}];
}

List<User> users = []; 


  bool  creatUeser(String name ){
   for(int i = 0 ; i < users.length ; i++){
    if(users[i].name == name){
        return false ;
    } 

   }
   var user = User() ; 
   user.name = name  ;
   user.id = generateId() ;
   users.add(user) ;
    return true ;

  }

  bool deleteUser(int id ){
    for(int i = 0 ; i < users.length ; i++){
    if(users[i].id == id){
       users.remove(users[i]) ;
        return true ;
    } 

   }
   return false ;
  }

  bool updateUser(int id , String name  ){
    for(int i = 0 ; i < users.length ; i++){
    if(users[i].id == id){
       users[i].name = name ;
        return true ;
    } 

   }
   return false ;
  } 



     

  User? checkUserExist({ int? id   , String? name }  ){
    if(name == null )
    {
      for(int i = 0 ; i < users.length ; i++){
      if(users[i].id == id){
        return users[i] ;

      }

    }
    return null 
    ;} 
    else{
        for(int i = 0 ; i < users.length ; i++){
      if(users[i].name == name){
        return users[i] ;

      }

    }
    return null   ;
    }

  }

List<Map<Product,int>>? userCart(int id ){
  if(checkUserExist(id : id) == null )  return   null ;
   return checkUserExist( id : id)?.products  ;


}
 bool cleaerUserCart(int id ){
  if(checkUserExist(id :id) == null )  return   false ;
  checkUserExist(id : id)?.products = [] ;
   return true   ;


}



  int generateId(){
  var random = Random();
    return random.nextInt(2000);

  }

  