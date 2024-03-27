import 'package:injectable/injectable.dart';
import 'package:poll_power_api_server/gen/prisma/client.dart';

abstract class DbModule {
  @Named('db')
  @Singleton()
  PrismaClient get prismaClient => PrismaClient();
}
