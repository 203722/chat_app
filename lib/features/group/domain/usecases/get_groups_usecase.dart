import 'package:recu_chatapp/features/group/domain/entities/group_entity.dart';
import 'package:recu_chatapp/features/group/domain/repository/group_repository.dart';

class GetGroupsUseCase {
  final GroupRepository repository;

  GetGroupsUseCase({required this.repository});

  Stream<List<GroupEntity>> call() {
    return repository.getGroups();
  }
}
