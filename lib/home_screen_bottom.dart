import 'package:flutter/material.dart';

class HomeScreenBottom extends StatelessWidget{

  late final Orientation orientation;
  late final double screenHeight,screenWidth;
  late int totalPrice;
  late Function onPressed;

  HomeScreenBottom({super.key, required this.orientation,required this.screenHeight,required this.screenWidth,required this.totalPrice,required this.onPressed});

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      height: (orientation == Orientation.portrait)? screenHeight*0.14: screenHeight*0.22,
      child: Column(
        mainAxisAlignment:MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Wrap(
                alignment: WrapAlignment.start,
                children: [
                  Text('Total Amount:',style:TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                    fontFamily: 'Roboto'
                  ))
                ],
              ),
              Wrap(
                children: [
                  Text('${totalPrice.toString()}\$',style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto'
                  ),)
                ],
              )
            ],
          ),
          SizedBox(
            height: (orientation == Orientation.portrait) ? 20 : 10,
          ),
          Center(
            child: SizedBox(
              width: screenWidth * 0.9,
              height: (orientation == Orientation.portrait)
                  ? MediaQuery.of(context).size.height * 0.06
                  : MediaQuery.of(context).size.height * 0.12,
              child: ElevatedButton(
                onPressed: () => onPressed(),
                child: const Text("CHECK OUT",style: TextStyle(fontSize: 14,fontFamily: 'Roboto',color: Colors.white,fontWeight: FontWeight.w400),),
              ),
            ),
          ),
        ],
      ),
    );
  }

}