import '../bin/main.dart';

void main() {
  /// Implement test here
}

Future<bool> isTestDbReady() async {
  // check if test db is use rather than prod db
  // final File file = File("../prisma/schema.prisma");
  // final List<String> lines = await file.readAsLines();
  // final int index = lines.indexWhere((e) => e.contains("url      = env"));
  // return (lines[index] == '  url      = env("TEST_DATABASE_URL")');
  await init();
  return true;
}
