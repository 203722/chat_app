import 'dart:io';

import 'package:recu_chatapp/features/storage/domain/repository/cloud_storage_repository.dart';

class UploadPdfUseCase {
  final CloudStorageRepository repository;

  UploadPdfUseCase({required this.repository});

  Future<String> call({required File file}) async {
    return await repository.uploadPdf(file: file);
  }
}
