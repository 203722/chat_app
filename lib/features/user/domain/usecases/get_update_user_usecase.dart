import 'package:recu_chatapp/features/user/domain/entities/user_entity.dart';
import 'package:recu_chatapp/features/user/domain/repository/user_repository.dart';

class GetUpdateUserUseCase {
  final UserRepository repository;

  GetUpdateUserUseCase({required this.repository});
  Future<void> call(UserEntity user) {
    return repository.getUpdateUser(user);
  }
}
