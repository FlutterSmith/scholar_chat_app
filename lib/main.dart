import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scholar_chat/firebase_options.dart';
import 'package:scholar_chat/screens/chat_screen.dart';
import 'package:scholar_chat/screens/cubits/login_cubit/login_cubit.dart';
import 'package:scholar_chat/screens/cubits/register_cubit/register_cubit.dart';
import 'package:scholar_chat/screens/login_screen.dart';
import 'package:scholar_chat/screens/register_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const ScholarChat());
}

class ScholarChat extends StatelessWidget {
  const ScholarChat({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => LoginCubit()),
        BlocProvider(create: (context) => RegisterCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: false,
        ),
        routes: {
          LoginScreen.id: (context) => LoginScreen(),
          RegisterScreen.id: (context) =>  RegisterScreen(),
          ChatScreen.id: (context) => const ChatScreen(),
        },
        initialRoute: LoginScreen.id,
      ),
    );
  }
}
