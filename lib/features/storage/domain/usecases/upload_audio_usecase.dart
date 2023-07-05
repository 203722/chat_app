import 'dart:io';

import 'package:recu_chatapp/features/storage/domain/repository/cloud_storage_repository.dart';

class UploadAudioUseCase {
  final CloudStorageRepository repository;

  UploadAudioUseCase({required this.repository});

  Future<String> call({required File file}) async {
    return await repository.uploadAudio(file: file);
  }
}
