import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyOrderDetails {
  Status? status;
  num? price;
  String? shopName;
  String? orderDesp;
  String? orderId;
  String? img;
  DateTime? date;
  DateTime? expDate;
  DateTime? oplacedDate;
  DateTime? overifiedDate;
  DateTime? ocancelledDate;
  String? statusText;
  Color? statusColor;

  MyOrderDetails(
      {this.orderId,
      this.ocancelledDate,
      this.oplacedDate,
      this.overifiedDate,
      this.date,
      this.img,
      this.shopName,
      this.orderDesp,
      this.price,
      this.expDate});
}

MyOrderDetails getOrderDetails({MyOrderDetails? order, Status? status}) {
  MyOrderDetails? orderDetails = MyOrderDetails();
  if (status == Status.CANCELLED) {
    orderDetails.date = order!.date;
    orderDetails.ocancelledDate = order.ocancelledDate;
    orderDetails.overifiedDate = order.overifiedDate;
    orderDetails.oplacedDate = order.oplacedDate;
    orderDetails.expDate = order.expDate;
    orderDetails.orderDesp = order.orderDesp;
    orderDetails.price = order.price;
    orderDetails.shopName = order.shopName;
    orderDetails.img = order.img;
    orderDetails.orderId = order.orderId;
    orderDetails.status = status;
    orderDetails.statusText = 'Cancelled By You';
    orderDetails.statusColor = Colors.red;

    return orderDetails;
  } else if (status == Status.PENDING) {
    orderDetails.date = order!.date;
    orderDetails.ocancelledDate = order.ocancelledDate;
    orderDetails.overifiedDate = order.overifiedDate;
    orderDetails.oplacedDate = order.oplacedDate;
    orderDetails.expDate = order.expDate;
    orderDetails.price = order.price;
    orderDetails.orderDesp = order.orderDesp;
    orderDetails.shopName = order.shopName;
    orderDetails.img = order.img;
    orderDetails.orderId = order.orderId;
    orderDetails.status = status;
    orderDetails.statusText = 'Pending';
    orderDetails.statusColor = Colors.red;

    return orderDetails;
  } else {
    orderDetails.date = order!.date;
    orderDetails.ocancelledDate = order.ocancelledDate;
    orderDetails.overifiedDate = order.overifiedDate;
    orderDetails.oplacedDate = order.oplacedDate;
    orderDetails.expDate = order.expDate;
    orderDetails.orderDesp = order.orderDesp;
    orderDetails.price = order.price;
    orderDetails.shopName = order.shopName;
    orderDetails.img = order.img;
    orderDetails.orderId = order.orderId;
    orderDetails.status = status;
    orderDetails.statusText = 'Delivered';
    orderDetails.statusColor = Colors.green;

    return orderDetails;
  }
}

enum Status { PENDING, CANCELLED, DELIVERED }

List<MyOrderDetails> orderItems = [
  getOrderDetails(
      status: Status.PENDING,
      order: MyOrderDetails(
        orderId: 'ASDFG5499860',
        price: 3000,
        shopName: 'RK Chicken',
        orderDesp: 'Skin out cleaned and chopped',
        img: 'assets/myOrdersImg1.png',
        date: DateTime.now(),
        expDate: DateTime.now(),
        oplacedDate: DateTime.now(),
        overifiedDate: DateTime.now(),
        ocancelledDate: DateTime.now()
        
      )),
  getOrderDetails(
      status: Status.CANCELLED,
      order: MyOrderDetails(
        orderId: 'ASDFG5499860',
        price: 3000,
        shopName: 'RK Chicken',
        orderDesp: 'Skin out cleaned and chopped',
        img: 'assets/myOrdersImg2.png',
        date: DateTime.now(),
        expDate: DateTime.now(),
        oplacedDate: DateTime.now(),
        overifiedDate: DateTime.now(),
        ocancelledDate: DateTime.now()
      )),
  getOrderDetails(
      status: Status.DELIVERED,
      order: MyOrderDetails(
        orderId: 'ASDFG5499860',
        price: 3000,
        shopName: 'RK Chicken',
        orderDesp: 'Skin out cleaned and chopped',
        img: 'assets/myOrdersImg3.png',
        date: DateTime.now(),
        expDate: DateTime.now(),
        oplacedDate: DateTime.now(),
        overifiedDate: DateTime.now(),
        ocancelledDate: DateTime.now()
      )),
  getOrderDetails(
      status: Status.DELIVERED,
      order: MyOrderDetails(
        orderId: 'ASDFG5499860',
        price: 3000,
        shopName: 'RK Chicken',
        orderDesp: 'Skin out cleaned and chopped',
        img: 'assets/myOrdersImg4.png',
        date: DateTime.now(),
        expDate: DateTime.now(),
        oplacedDate: DateTime.now(),
        overifiedDate: DateTime.now(),
        ocancelledDate: DateTime.now()
      )),
  getOrderDetails(
      status: Status.DELIVERED,
      order: MyOrderDetails(
        orderId: 'ASDFG5499860',
        price: 3000,
        shopName: 'RK Chicken',
        orderDesp: 'Skin out cleaned and chopped',
        img: 'assets/myOrdersImg3.png',
        date: DateTime.now(),
        expDate: DateTime.now(),
        oplacedDate: DateTime.now(),
        overifiedDate: DateTime.now(),
        ocancelledDate: DateTime.now()
      )),
  getOrderDetails(
      status: Status.DELIVERED,
      order: MyOrderDetails(
        orderId: 'ASDFG5499860',
        price: 3000,
        shopName: 'RK Chicken',
        orderDesp: 'Skin out cleaned and chopped',
        img: 'assets/myOrdersImg4.png',
        date: DateTime.now(),
        expDate: DateTime.now(),
        oplacedDate: DateTime.now(),
        overifiedDate: DateTime.now(),
        ocancelledDate: DateTime.now()
      )),
];
