import 'package:recu_chatapp/features/group/group_injection_container.dart';
import 'package:recu_chatapp/features/storage/storage_injection_container.dart';
import 'package:recu_chatapp/features/user/user_injection_container.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> init() async {
  /// External
  final auth = FirebaseAuth.instance;
  final fireStore = FirebaseFirestore.instance;
  final FirebaseStorage storage = FirebaseStorage.instance;

  sl.registerLazySingleton(() => auth);
  sl.registerLazySingleton(() => fireStore);
  sl.registerLazySingleton(() => storage);

  await userInjectionContainer();
  await storageInjectionContainer();
  await groupInjectionContainer();
}
