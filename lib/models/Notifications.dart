import 'package:flutter/material.dart';

class Notifications {
  final int id;
  final String title, description;

  Notifications({
    required this.id,
    required this.title,
    required this.description,
  });
}

// Our demo Products

List<Notifications> demoNotification = [
  Notifications(
    id: 1,
    title: "Spring/Summer '23: Shop Now",
    description: "Don't missed out! Find out more",
  ),
  Notifications(
    id: 2,
    title: "Want a Discount?",
    description: "Here's your 10% off yout entire purchase!",
  ),
  Notifications(
    id: 3,
    title: "Good News! Faster Delivery on all online orders",
    description: "Shop now and get your item in 1-4 business day",
  ),
  Notifications(
    id: 4,
    title: "Payday Special",
    description: "It's shopping time! Enjoy selected essentials at special prices on LIMITED OFFER now",
  ),
  Notifications(
    id: 5,
    title: "Hot-seller back in stock",
    description: "Grab it now before it's gone!",
  ),
];


