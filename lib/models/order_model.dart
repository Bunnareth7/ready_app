import 'package:flutter/material.dart';

class Order {
  final String id;
  final String time;
  final String location;
  final String status;
  final Color statusColor;
  final String quantity;
  final String type; // Pickup, Dine in, Delivery

  Order({
    required this.id,
    required this.time,
    required this.location,
    required this.status,
    required this.statusColor,
    required this.quantity,
    required this.type,
  });

  // Dummy data – stays in the model file
  static List<Order> get dummyOrders => [
    Order(
      id: '001-123',
      time: '1h 25m',
      location: 'Counter',
      status: 'Ready',
      statusColor: Colors.green,
      quantity: 'X7 ',
      type: 'Pickup',
    ),
    Order(
      id: 'CHHUNDARA KHORN',
      time: '1h 25m',
      location: 'Mobile',
      status: 'Re-call',
      statusColor: const Color(0xFFf1c40f),
      quantity: 'X7 ',
      type: 'Pickup',
    ),
    Order(
      id: 'K12',
      time: '1h 25m',
      location: 'KIOSK',
      status: 'Ready',
      statusColor: Colors.green,
      quantity: 'X7 ',
      type: 'Dine in',
    ),
    Order(
      id: 'G-123',
      time: '1h 25m',
      location: 'Grab',
      status: 'Re-call',
      statusColor: const Color(0xFFf1c40f),
      quantity: 'X7 ',
      type: 'Delivery',
    ),
  ];
}