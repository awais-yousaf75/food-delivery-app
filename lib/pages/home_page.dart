import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/custom_currentLocation.dart';
import 'package:food_delivery_app/components/custom_descriptionBox.dart';
import 'package:food_delivery_app/components/custom_drawer.dart';
import 'package:food_delivery_app/components/custom_sliverAppBar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          CustomSliverAppBar(
            title: Text("Title"),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Divider(
                  indent: 25,
                  endIndent: 25,
                  color: Theme.of(context).colorScheme.secondary,
                ),

                const CustomCurrentLocation(),

                const CustomDescriptionBox(),
              ],
            ),
          ),
        ],
        body: Container(color: Colors.blue),
      ),
    );
  }
}
