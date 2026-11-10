import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:social_mate/features/auth/data/models/app_user_model.dart';

class UserRemoteDatasource{

  final FirebaseFirestore firestore;

  UserRemoteDatasource(this.firestore);

  Future<void> addUserToFireStore(AppUserModel userModel) async{
    firestore.collection("users")
    .doc(userModel.userId)
    .set(userModel.toJson());

    print('==============:user add to firestore with it id: ${userModel.userId}');
  }

  Future<AppUserModel> getUserFromFireStore(String userId) async{
    final docSnapshot = await firestore.collection("users").doc(userId).get();
    if(docSnapshot.exists){
      return AppUserModel.fromJson(docSnapshot.data()!);
    }else{
      throw Exception("User not found");
    }
  }
}