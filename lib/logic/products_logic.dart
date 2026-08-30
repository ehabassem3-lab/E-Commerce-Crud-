import 'package:crud_e_commerce/data/Users.dart' as userData;
import 'package:crud_e_commerce/data/Products.dart' as productData;

 


 String addProductToStore(int id   , String name  , double price  ){
  if(productData.checkProductExsists(id)) return 'Product Already Exist' ;
   productData.addProductToTheStore(id, name, price) ;
   return 'Product Added Succesfully' ;
 }

 String addProductToUser(int productId , int userId){
  if(userData.checkUserExist(id : userId) == null) return 'User Not Found' ;
  productData.addProductToUser(productId, userId) ;
  return 'Product Added To User Cart Succefully' ;
 }


 String deleteProductFromUser(int productId , int userId){
   if(userData.checkUserExist(id : userId) == null) return 'User Not Found' ;
   productData.deleteProductToUser(productId, userId) ;
   return "Product Deleted Succesfully" ;
 }
 



