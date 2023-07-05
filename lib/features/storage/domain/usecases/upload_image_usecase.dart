import 'dart:io';

import 'package:recu_chatapp/features/storage/domain/repository/cloud_storage_repository.dart';

class UploadImageUseCase {
  final CloudStorageRepository repository;

  UploadImageUseCase({required this.repository});

  Future<String> call({required File file}) async {
    return await repository.uploadImage(file: file);
  }
}
