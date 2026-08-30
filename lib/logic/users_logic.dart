

 import 'package:crud_e_commerce/data/Products.dart';
import 'package:crud_e_commerce/data/Users.dart' as data;

String? createUser(String name ){
  if( data.checkUserExist(name:  name) != null ) return "User Already Exist " ;
   data.creatUeser(name) ;
  return 'User Crated Succesfully' ;


 }


 String deleteUser(int id ){
  if(data.checkUserExist(id:  id) == null) return 'User  Not  Found '  ;
  data.deleteUser(id) ;
  return 'User Deleted Succefully ' ;
 }

  String updateUser(int id  , String name ){
   if(data.checkUserExist(id:  id) == null) return 'User  Not  Found '  ;
  data.updateUser(id , name) ;
  return 'User Updated  Succefully ' ;
 }


List<Map<Product,int>>? viewUserCart(int id ){
   if(data.checkUserExist(id:  id) == null) return null ;
     final userCart = data.userCart(id) ;
     return userCart ;
 }



String clearUserCart(int id ){
   if(data.checkUserExist(id:  id) == null) return 'User  Not  Found '  ;
     data.cleaerUserCart(id) ;
     return 'User Cart Cleared Succefully' ;
 }
