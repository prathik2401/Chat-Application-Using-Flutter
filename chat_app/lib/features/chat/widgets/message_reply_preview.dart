import 'package:chat_app/common/providers/message_reply_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MessageReplyPreview extends ConsumerWidget {
  const MessageReplyPreview({super.key});

  void cancelReply(WidgetRef ref) {
    ref.read(messageReplyProvider.notifier).update((state) => null);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final messageReply = ref.watch(messageReplyProvider);
    return Container(
      width: 350,
      padding: const EdgeInsets.all(8),
      child: Column(children: [
        Row(
          children: [
            Expanded(
              child: Text(
                messageReply!.isMe ? 'Me' : 'Opposite',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            GestureDetector(
              child: const Icon(
                Icons.close,
                size: 16,
              ),
              onTap: () {},
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              messageReply.message,
            ),
          ],
        ),
      ]),
    );
  }
}
