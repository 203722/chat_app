import 'package:recu_chatapp/features/injection_container.dart';
import 'package:recu_chatapp/features/storage/data/firebase_data_source/cloud_storage_firebase_data_source.dart';
import 'package:recu_chatapp/features/storage/data/firebase_data_source/cloud_storage_firebase_data_source_impl.dart';
import 'package:recu_chatapp/features/storage/data/repository/cloud_storage_repository_impl.dart';
import 'package:recu_chatapp/features/storage/domain/repository/cloud_storage_repository.dart';
import 'package:recu_chatapp/features/storage/domain/usecases/upload_group_image_usecase.dart';
import 'package:recu_chatapp/features/storage/domain/usecases/upload_profile_image_usecase.dart';
import 'package:recu_chatapp/features/storage/domain/usecases/upload_image_usecase.dart';
import 'package:recu_chatapp/features/storage/domain/usecases/upload_video_usecase.dart';
import 'package:recu_chatapp/features/storage/domain/usecases/upload_audio_usecase.dart';
import 'package:recu_chatapp/features/storage/domain/usecases/upload_pdf_usecase.dart';

Future<void> storageInjectionContainer() async {
  /// UseCases
  sl.registerLazySingleton<UploadProfileImageUseCase>(
      () => UploadProfileImageUseCase(repository: sl.call()));
  sl.registerLazySingleton<UploadGroupImageUseCase>(
      () => UploadGroupImageUseCase(repository: sl.call()));
  sl.registerLazySingleton<UploadImageUseCase>(
      () => UploadImageUseCase(repository: sl.call()));
  sl.registerLazySingleton<UploadVideoUseCase>(
      () => UploadVideoUseCase(repository: sl.call()));
  sl.registerLazySingleton<UploadAudioUseCase>(
      () => UploadAudioUseCase(repository: sl.call()));
  sl.registerLazySingleton<UploadPdfUseCase>(
      () => UploadPdfUseCase(repository: sl.call()));

  /// Repository
  sl.registerLazySingleton<CloudStorageRepository>(
      () => CloudStorageRepositoryImpl(remoteDataSource: sl.call()));

  /// Remote DataSource
  sl.registerLazySingleton<CloudStorageFirebaseDataSource>(
      () => CloudStorageFirebaseDataSourceImpl(storage: sl.call()));
}
