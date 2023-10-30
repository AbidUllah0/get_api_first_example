import 'package:flutter/material.dart';
import 'package:get_api_class1_asif_taj/presentation/Screens/Home_Screen/provider/home_provider_practive.dart';
import 'package:provider/provider.dart';

class HomeViewPractive extends StatefulWidget {
  const HomeViewPractive({super.key});

  @override
  State<HomeViewPractive> createState() => _HomeViewPractiveState();
}

class _HomeViewPractiveState extends State<HomeViewPractive> {
  @override
  Widget build(BuildContext context) {
    final homrProvider2 = Provider.of<HomeProviderPractice>(context);

    return Scaffold(
      body: FutureBuilder(
        future: homrProvider2.getPostsDataPractice(),
        builder: (context, snapshot) {
          return ListView.builder(
            itemCount: homrProvider2.postsList2.length,
            itemBuilder: (context, index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(homrProvider2.postsList2[index].title.toString()),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
