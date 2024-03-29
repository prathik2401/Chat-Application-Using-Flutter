import 'package:chat_app/common/enums/message_enum.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MessageReply {
  final String message;
  final bool isMe;
  final MessageEnum messageEnum;

  MessageReply(this.message, this.isMe, this.messageEnum);

  get username => null;
}

final messageReplyProvider = StateProvider<MessageReply?>((ref) => null);
