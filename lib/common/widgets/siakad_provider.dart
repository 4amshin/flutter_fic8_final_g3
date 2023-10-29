// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_fic8_final_g3/bloc/getUser/get_user_bloc.dart';
import 'package:flutter_fic8_final_g3/bloc/khs/khs_bloc.dart';
import 'package:flutter_fic8_final_g3/bloc/login/login_bloc.dart';
import 'package:flutter_fic8_final_g3/bloc/logout/logout_bloc.dart';
import 'package:flutter_fic8_final_g3/data/data_sources/auth_remote_data_source.dart';
import 'package:flutter_fic8_final_g3/data/data_sources/khs_remote_data_source.dart';

class SiakadProvider extends StatelessWidget {
  final Widget child;
  const SiakadProvider({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LoginBloc(AuthRemoteDataSource()),
        ),
        BlocProvider(
          create: (context) => LogoutBloc(AuthRemoteDataSource()),
        ),
        BlocProvider(
          create: (context) => GetUserBloc(AuthRemoteDataSource()),
        ),
        BlocProvider(
          create: (context) => KhsBloc(KhsRemoteDataSource()),
        ),
      ],
      child: child,
    );
  }
}
