import 'dart:io';

import 'package:grpc/grpc.dart';

import 'generated/image_uploader.pbgrpc.dart';
import 'generated/service.pbgrpc.dart';

Future<void> main() async {
  print('Run Server!');
  final channel = ClientChannel(
    'localhost',
    port: 50052,
    options: const ChannelOptions(
      credentials: ChannelCredentials.insecure(),
    ),
  );
  final sub = GreeterClient(channel);
  final request = HelloRequest()..name = 'aaldflasldfa';
  final response = await sub.sayHello(request);
  print(response.message);
  await fileUpload(channel);
  await channel.shutdown();
}

Future<void> fileUpload(ClientChannel channel) async {
  final sub = ImageUploaderClient(channel);
  final file = File('test.jpg');
  final byte = await file.readAsBytes();
  final request = UploadImageRequest(uploadFile: byte);
  final response = await sub.uploadImage(request);
  print(response.url);
}
