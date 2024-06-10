import 'package:flutter/material.dart';
import 'package:prueba_cubit/presentation/home/view/homepage.dart';
import 'package:prueba_cubit/presentation/pagination/view/pagination_page.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: ((context) => const MyHomePage())));
              
            }, 
            child: const Text('MyHomePage')),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: () {

              Navigator.push(context, MaterialPageRoute(builder: ((context) => const PaginationPage())));
            }, 
            child: const Text('Paginacion'))
          ],
        ),
      ),
    );
  }
}