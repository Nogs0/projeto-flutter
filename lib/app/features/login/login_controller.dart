import 'package:flutter_animate/flutter_animate.dart';

Future<bool> login({
  required String email,
  required String name,
  required String password,
  required String cpf,
  required int age,
}) async {
  await Future.delayed(2.seconds);
  if (name == 'Joao') {
    return true;
  }
  return false;
}
