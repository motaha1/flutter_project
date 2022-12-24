import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:final_grad_proj/models/app_user.dart';
import 'package:final_grad_proj/models/appoiment.dart';
import 'package:final_grad_proj/models/doctor_model.dart';
import 'package:firebase_core/firebase_core.dart';

class FirestoreHelper {
  FirestoreHelper._();
  static FirestoreHelper firestoreHelper = FirestoreHelper._();
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  //register
  addNewUser(AppUser appUser) async {
    firestore.collection('users').doc(appUser.id).set(appUser.toMap());
  }

  //login
  Future<AppUser> getUserFromFirestore(String id) async {
    late AppUser appUser;
    String type = '';
    AppUser appUser1 =
        AppUser(email: 'motah@fff.com', name: 'fff', phoneNumber: '5555');
    DocumentSnapshot<Map<String, dynamic>> documentSnapshot =
        await firestore.collection('users').doc(id).get();
    Map<String, dynamic>? data = documentSnapshot.data();
    print(data?['type']);
    type = data?['type'];
    //Map x; 
    if (data?['type'] == 'Doctor') {
      DocumentSnapshot<Map<String, dynamic>> documentSnapshot1 =
          await firestore.collection('Doctor').doc(id).get();
      Map<String, dynamic>? data1 = documentSnapshot1.data();
      AppUser appUser = AppUser.fromMap(data1!);
      appUser.type = data?['type'] ; 

      return appUser;
    } else if (data?['type'] == 'patient') {
      print(id);

      DocumentSnapshot<Map<String, dynamic>> documentSnapshot1 =
          await firestore.collection('Paient').doc(id).get();
      Map<String, dynamic>? data1 = documentSnapshot1.data();
      AppUser appUser = AppUser.fromMap(data1!);
appUser.type = data?['type'] ; 
      return appUser;
    }

    return appUser1;
  }

  updateTheUser(AppUser appUser) async {
    await firestore.collection('users').doc(appUser.id).update(appUser.toMap());
  }

  Future<List<Doctor>?> getAllDoctors() async {
    try {
      QuerySnapshot<Map<String, dynamic>> catsSnapshot =
          await firestore.collection('Doctor').get();
      List<Doctor> doctors = catsSnapshot.docs.map((doc) {
        return Doctor.fromMap(doc.data());
      }).toList();
      print(doctors);
      return doctors;
    } on Exception catch (e) {
      log(e.toString());
    }
  }

///////////////get all appoimets ////////
  ///
  ///

  Future<List<Appoiment>?> getAllappoimnets(String docId) async {
    QuerySnapshot<Map<String, dynamic>> querySnapshot = await firestore
        .collection('Doctor')
        .doc(docId)
        .collection('appoiment')
        .get();
    return querySnapshot.docs.map((e) {
      Appoiment app = Appoiment.fromMap(e.data());

      return app;
    }).toList();
  }

  Future<List<Appoiment>?> getAllappoimnets_patiant(String Id) async {
    QuerySnapshot<Map<String, dynamic>> querySnapshot = await firestore
        .collection('Paient')
        .doc(Id)
        .collection('appoiment')
        .get();
    return querySnapshot.docs.map((e) {
      Appoiment app = Appoiment.fromMap(e.data());

      return app;
    }).toList();
  }
//////////////////chat////////////////////////

//   //// admin methods
//   Future<String?> addNewCategory(Category category) async {
//     try {
//       DocumentReference<Map<String, dynamic>> categoryDocument =
//           await firestore.collection('categories').add(category.toMap());

//       return categoryDocument.id;
//     } on Exception catch (e) {
//       log(e.toString());
//     }
//   }

//   Future<bool> deleteCategoey(String catId) async {
//     try {
//       await firestore.collection('categories').doc(catId).delete();
//       return true;
//     } on Exception catch (e) {
//       log(e.toString());
//       return false;
//     }
//   }

//   Future<List<Category>?> getAllCategories() async {
//     try {
//       QuerySnapshot<Map<String, dynamic>> catsSnapshot =
//           await firestore.collection('categories').get();
//       List<Category> categories = catsSnapshot.docs.map((doc) {
//         Category category = Category.fromMap(doc.data());
//         category.id = doc.id;
//         return category;
//       }).toList();
//       return categories;
//     } on Exception catch (e) {
//       log(e.toString());
//     }
//   }

//   Future<bool?> updateCategory(Category category) async {
//     try {
//       await firestore
//           .collection('categories')
//           .doc(category.id)
//           .update(category.toMap());
//       return true;
//     } on Exception catch (e) {
//       log(e.toString());
//       return false;
//     }
//   }

//   /// products functions
//   Future<String?> addNewProduct(Product product) async {
//     try {
//       DocumentReference<Map<String, dynamic>> documentReference =
//           await firestore
//               .collection('categories')
//               .doc(product.catId)
//               .collection('products')
//               .add(product.toMap());
//       return documentReference.id;
//     } on Exception catch (e) {
//       log(e.toString());
//     }
//   }

//   Future<List<Product>?> getAllProducts(String catId) async {
//     firestore.collection('categories').doc(catId).collection('products').get();
//   }

//   Future<bool?> deleteProduct(Product product) async {}
//   Future<bool?> updateProduct(Product product) async {}
}
