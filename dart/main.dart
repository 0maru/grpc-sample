import 'package:grpc/grpc.dart';

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
  await channel.shutdown();
}
