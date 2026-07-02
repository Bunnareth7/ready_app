import 'package:flutter/material.dart';
import 'package:ready_app/models/food_model.dart';
import '../models/order_model.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<Order> orders = Order.dummyOrders;
  final List<FoodModel> foods = FoodModel.foodDummy;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 40),
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
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "Tube Cafe 2k24",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: Container(
              height: 2,
              width: double.infinity,
              color: Colors.grey.withAlpha(20),
            ),
          ),
          //Filter bar
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              height: 35,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xFFecf0f1),
                border: Border.all(color: Color(0xFFffffff)),
                borderRadius: BorderRadius.circular(12),
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 0, right: 10),
                      child: Container(
                        width: 50,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(child: Text("All")),
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
                
                height: 115,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFFffffff),
                  border: Border.all(color: const Color(0xFFffffff)),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Text(
                            order.id,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const Spacer(),

                        Padding(
                          padding: const EdgeInsets.only(),
                          child: Container(
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
                                style: TextStyle(
                                  fontSize: 14,
                                  color: order.textColors,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Row(
                        children: [
                          Icon(
                            Icons.access_time,
                            size: 14,
                            color: Colors.black,
                          ),

                          Text(
                            "${order.time} · ${order.location}",
                            style: TextStyle(fontSize: 13, color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,

                      children: [
                        // Small images
                        SizedBox(width: 10),
                        SizedBox(
                          height: 30,
                          width: 180,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: 35,
                                height: 35,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2),
                                  border: Border.all(
                                    color: const Color(0xFFecf0f1),
                                  ),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadiusGeometry.circular(
                                    4,
                                  ),
                                  child: Image.network(
                                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTaMi7hfJCXSGUfSJ7GrCjb2BuD2ZAXDliMQlLic5PdKxQc17azQN3VAMyP&s=10",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Container(
                                width: 35,
                                height: 35,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2),
                                  border: Border.all(
                                    color: const Color(0xFFecf0f1),
                                  ),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadiusGeometry.circular(
                                    4,
                                  ),

                                  child: Image.network(
                                    "https://hips.hearstapps.com/hmg-prod/images/roasted-chickpea-tomato-and-chicken-bowls-healthy-chicken-recipes-65e8b8ff3ccf6.jpg?crop=0.936xw:0.936xh;0.0641xw,0.0431xh&resize=640:*",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Container(
                                width: 35,
                                height: 35,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2),
                                  border: Border.all(
                                    color: const Color(0xFFecf0f1),
                                  ),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadiusGeometry.circular(
                                    4,
                                  ),
                                  child: Image.network(
                                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTlA7aH_9Ox4NjQ045Yo1vAuTQqNU6sxvDtmiLtn56TmA&s",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Container(
                                width: 35,
                                height: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2),
                                  border: Border.all(
                                    color: const Color(0xFFecf0f1),
                                  ),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadiusGeometry.circular(
                                    4,
                                  ),
                                  child: Image.network(
                                    "https://www.eatingwell.com/thmb/QYZnBgF72TIKI6-A--NyoPa6avY=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/greek-salmon-bowl-f681500cbe054bb1adb607ff55094075.jpeg",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Container(
                                width: 35,
                                height: 35,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2),
                                  border: Border.all(
                                    color: const Color(0xFFecf0f1),
                                  ),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadiusGeometry.circular(
                                    4,
                                  ),
                                  child: Image.network(
                                    "https://media.istockphoto.com/id/1416818056/photo/colourful-vegan-bowl-with-quinoa-and-sweet-potato.jpg?s=612x612&w=0&k=20&c=t1I58CqucV6bLRaa4iDy7PIVjnV8D9eWDjEsX9X-87k=",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Text(order.quantity),
                        const Text(" · "),
                        Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: Text(
                            order.type,
                            style: TextStyle(fontSize: 14, color: Colors.black),
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
