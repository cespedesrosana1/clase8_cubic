


import 'package:cubit_clase8/pages/pagina1_page.dart';
import 'package:cubit_clase8/pages/pagina2_page.dart';
import 'package:cubit_clase8/usuario/usuario_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: ( _ ) =>  UsuarioCubit() )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: 'pagina1',
        routes: {
          'pagina1': ( _ ) => Pagina1Page(),
          'pagina2': ( _ ) => Pagina2Page(),
        },
      ),
    );
  }
}