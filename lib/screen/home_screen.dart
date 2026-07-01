import 'package:flutter/material.dart';
import '../models/order_model.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<Order> orders = Order.dummyOrders;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Store location"),
                Padding(
                  padding: const EdgeInsets.only(right: 10, top: 10),
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/settings');
                    },
                    child: const Icon(
                      Icons.settings_outlined,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, bottom: 10),
            child: Text(
              "Tube Cafe 2k24",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 10),
          //Filter bar
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              height: 40,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xFFecf0f1),
                border: Border.all(color: Color(0xFFecf0f1)),
                borderRadius: BorderRadius.circular(12),
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(left: 2, right: 10),
                      child: Container(
                        width: 50,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child:  Center(child: Text("All")),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8, right: 8),
                      child: SizedBox(
                        width: 70,
                        height: 40,
                        child: Center(child: Text("Pickup")),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 8, right: 8),
                      child: SizedBox(
                        width: 70,
                        height: 40,
                        child: Center(child: Text("Walk-in")),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 8, right: 8),
                      child: SizedBox(
                        width: 70,
                        height: 40,
                        child: Center(child: Text("delivery")),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 5, right: 5),
                      child: SizedBox(
                        width: 70,
                        height: 40,
                        child: Center(child: Text("takeaway")),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          //ORDER CART
          ...List.generate(orders.length, (index) {
            final order = orders[index];
            return Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
              child: Container(
                height: 120,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFFfafaf9),
                  border: Border.all(color: const Color(0xFFecf0f1)),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10),

                    Row(
                      children: [
                        
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Text(
                            order.id,
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const Spacer(), 

                        // Right: Status Badge
                        Container(
                          width: 100,
                          height: 40,
                          decoration: BoxDecoration(
                            color: order.statusColor,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          margin: const EdgeInsets.only(right: 8),
                          child: Center(
                            child: Text(
                              order.status,
                              style: const TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 6),
                    
                    Padding(
                      padding:  EdgeInsets.only(left: 8),
                      child: Row(
                        children: [
                           Icon(
                            Icons.access_time,
                            size: 14,
                            color: Colors.black,
                          ),
                           SizedBox(width: 4),
                          Text(
                            "${order.time} · ${order.location}",
                            style:  TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                     SizedBox(height: 10),

                  
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(order.quantity),
                        const Text(" · "),
                        Padding(
                          padding:  EdgeInsets.only(right: 10),
                          child: Text(
                            order.type,
                            style:  TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          }),
        ],
      ),
    );
  }
}