 
 // i added dummy data and also the user can add procuts too
 import 'package:crud_e_commerce/data/Users.dart';

class Product {
   int id = 0 ;
    String name ="";
    double price = 0  ;
    Product(this.id, this.name, this.price );
}

List<Product> products = [
  Product(1, "iPhone 15", 799),
  Product(2, "Samsung Galaxy S24", 899),
  Product(3, "Google Pixel 8", 699),
  Product(4, "MacBook Air M3", 1099),
  Product(5, "Dell XPS 15", 1299),
  Product(6, "iPad Air", 599),
  Product(7, "Samsung Galaxy Tab S9", 799),
  Product(8, "AirPods Pro 2", 249),
  Product(9, "Sony WH-1000XM5", 399),
  Product(10, "Apple Watch Series 9", 429),
  Product(11, "PlayStation 5", 499),
  Product(12, "Xbox Series X", 499),
  Product(13, "Nintendo Switch OLED", 349),
  Product(14, "Logitech MX Master 3S", 99),
  Product(15, "Keychron K2", 89),
  Product(16, "Dell 27 Monitor", 299),
  Product(17, "LG UltraGear 27", 349),
  Product(18, "Anker Power Bank", 59),
  Product(19, "Mechanical Keyboard", 120),
  Product(20, "USB-C Hub", 45),
];

  

bool addProductToTheUser(int id , String name , double price ){
  if(checkProductExsists(id)) return false ; 
  products.add(Product(id, name, price)) ;
      return true ;

}
 



bool addProductToTheStore(int id , String name , double price ){
  if(checkProductExsists(id)) return false ; 
  products.add(Product(id, name, price)) ;
      return true ;

}
 




 bool addProductToUser(int prodcutsId , int userId){
    if(getProcut(prodcutsId) != null )  
     {   var user = checkUserExist(userId);
         if (user == null) return false;
   if(checkProductExsistsUsersCart(prodcutsId) != null){
    var entry =  checkProductExsistsUsersCart(prodcutsId)!  ;
      for (var map in user.products) {
      if (map.containsKey(entry.key)) {
        map[entry.key] = entry.value + 1;
        return true;
      }
    }
   } 
   var prodct =  getProcut(prodcutsId)! ;
   user.products.add({prodct : 1}) ;
   return  true ;
}
return false ;

 }

 bool deleteProductToUser(int prodcutsId , int userId){
    if(getProcut(prodcutsId) != null )  
     {   var user = checkUserExist(userId);
         if (user == null) return false;
   if(checkProductExsistsUsersCart(prodcutsId) != null){
    var entry =  checkProductExsistsUsersCart(prodcutsId)!  ;
      for (var map in user.products) {
      if (map.containsKey(entry.key)) {
        map[entry.key] = entry.value - 1;
        return true;
      }
    }
   } 
   var prodct =  getProcut(prodcutsId)! ;
   user.products.remove({prodct : 1 }) ;
   return  true ;
}
return false ;

 }
 



MapEntry<Product , int>? checkProductExsistsUsersCart(int id) {
  for (int i = 0; i < users.length; i++) {
    for (int j = 0; j < users[i].products.length; j++) {
      for (var entry in users[i].products[j].entries) {
        if (entry.key.id == id) {
          return entry;
        }
      }
    }
  }
  return null;
}


bool checkProductExsists(int id ){
  for(int i = 0 ; i < products.length ; i++){
    if(products[i].id == id){
        return true ;
    }

  }
  return false ;

}

Product? getProcut(int id ){
   for( var product in products){
         if(product.id == id){
            return product ; 
         }
   }
   return null ;
}
