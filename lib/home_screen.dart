
import 'package:assignment_3_exercise/app_alert_dialog.dart';
import 'package:assignment_3_exercise/card_data.dart';
import 'package:assignment_3_exercise/home_screen_bottom.dart';
import 'package:assignment_3_exercise/shopping_card.dart';
import 'package:assignment_3_exercise/shopping_cart_controller.dart';
import 'package:assignment_3_exercise/show_snackbar.dart';
//import 'package:assignment_3_exercise/shopping_cart_controller.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int totalPrice=0;
  late double screenHeight, screenWidth;
  late ShoppingCardController cardController;

  @override
  void initState() {

    cardController=ShoppingCardController();
    totalPrice = cardController.calculateTotalPrice(data);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
      ),
      body: OrientationBuilder(
        builder: (BuildContext context, Orientation orientation) {
          return (orientation == Orientation.portrait)
              ? portraitView(orientation)
              : landScapeView(orientation);
        },
      ),
    );
  }
  Widget portraitView(Orientation orientation){
    return Container(
      margin: const EdgeInsets.all(10.00),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          //mainAxisAlignment: MainAxisAlignment.start,
          children: [
        const Wrap(
        alignment: WrapAlignment.start,
        children: [
          Text('My Bag',style: TextStyle(
            fontSize: 34,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w700,
          ),)
        ],
      ),
      const SizedBox(
        height: 25,
      ),
      Expanded(
        child: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) => ShoppingCard(
            screenHeight: screenHeight,
            screenWidth: screenWidth,
            orientation: orientation,
            index: index,
            increaseQuantity: () => increaseQuantity(index,orientation),
            decreaseQuantity: () => decreaseQuantity(index),
          ),
        ),
      ),
            HomeScreenBottom(
              orientation: orientation,
              screenHeight: screenHeight,
              screenWidth: screenWidth,
              totalPrice: totalPrice,
              onPressed:(){
                ScaffoldMessenger.of(context).showSnackBar(
                    ShowSnackBar(content: 'Congratulations! Your purchase was successful!!')
                );
            }
            ),

    ])
    );
  }

  Widget landScapeView (Orientation orientation){
    return Container(
   margin: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,

        children: [
          const Wrap(
            alignment: WrapAlignment.start,
            children: [
              Text('My Bag',style: TextStyle(
                fontSize: 34,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w700
              ),)
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Expanded(
              child: ListView.builder(
                itemCount: data.length,
                  itemBuilder: (context,index) => ShoppingCard(
                    screenHeight: screenHeight,
                    screenWidth: screenWidth,
                    orientation: orientation,
                    index: index,
                    increaseQuantity: () => increaseQuantity(index,orientation),
                    decreaseQuantity: () => decreaseQuantity(index),
                  ),
               )
          ),
          HomeScreenBottom(
              orientation: orientation,
              screenHeight: screenHeight,
              screenWidth: screenWidth,
              totalPrice: totalPrice,
              onPressed:(){

                 ScaffoldMessenger.of(context).showSnackBar(
                     ShowSnackBar(content: 'Congratulations! Your purchase was a success!!')
                 );
              }
          ),
        ],
      ),
    );
  }

  void increaseQuantity(int index, Orientation orientation) {
    totalPrice = cardController.increaseQuantity(totalPrice, index,data);
    if (data[index].quantity == 5) {
     showAlertDialog(index, orientation);
    }
    setState(() {
    });
  }

  void decreaseQuantity(int index) {
    totalPrice =cardController.decreaseQuantity(totalPrice,index,data);
    setState(() {
    });
  }

  void showAlertDialog(int index, Orientation orientation) {
    showDialog(
      context: context,
      builder: (context) {
        return AppAlertDialog(
          title: "Congratulations!",
          content:
          "You have added \n5\n ${data[index].dressName.toString()} in your bag!",
          orientation: orientation,
        );
      },
    );
  }




}



