import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/restaurant.dart';
import 'package:provider/provider.dart';

class CustomCurrentLocation extends StatefulWidget {
  const CustomCurrentLocation({super.key});

  @override
  State<CustomCurrentLocation> createState() => _CustomCurrentLocationState();
}

class _CustomCurrentLocationState extends State<CustomCurrentLocation> {
  TextEditingController textEditingController = TextEditingController();

  void openLocationSearchBox(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Your location"),
        content: TextField(
          controller: textEditingController,
          decoration: InputDecoration(hintText: "Enter address..."),
        ),
        actions: [
          MaterialButton(
            onPressed: () {
              Navigator.pop(context);
              textEditingController.clear();
            },
            child: const Text("Cancel"),
          ),
          MaterialButton(
            onPressed: () {
              String newAddress = textEditingController.text;
              context.read<Restaurant>().updateDeliveryAddress(newAddress);
              Navigator.pop(context);
              textEditingController.clear();
            },
            child: const Text("Save"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Deliver now",
            style: TextStyle(color: Theme.of(context).colorScheme.primary),
          ),
          GestureDetector(
            onTap: () => openLocationSearchBox(context),
            child: Row(
              children: [
                Consumer<Restaurant>(
                  builder: (context, restaurant, child) => Text(
                    restaurant.deliveryAddress,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                Icon(Icons.keyboard_arrow_down_rounded),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
