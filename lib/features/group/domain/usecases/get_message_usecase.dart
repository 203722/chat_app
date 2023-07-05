import 'package:recu_chatapp/features/group/domain/entities/text_message_entity.dart';
import 'package:recu_chatapp/features/group/domain/repository/group_repository.dart';

class GetMessageUseCase {
  final GroupRepository repository;

  GetMessageUseCase({required this.repository});

  Stream<List<TextMessageEntity>> call(String channelId) {
    return repository.getMessages(channelId);
  }
}
