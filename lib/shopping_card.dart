import 'package:assignment_3_exercise/card_data.dart';
import 'package:flutter/material.dart';

class ShoppingCard extends StatelessWidget{

  late double screenHeight,screenWidth;
  Orientation orientation;
  int index;
  final Function increaseQuantity;
  final Function decreaseQuantity;


  ShoppingCard({super.key,required this.screenHeight,required this.screenWidth,required this.orientation,required this.index, required this.decreaseQuantity, required this.increaseQuantity});

  @override
  Widget build(BuildContext context) {

     return Container(
       margin: const EdgeInsets.only(bottom: 30),
       height: (orientation == Orientation.portrait)?
       screenHeight*0.16 : screenHeight*0.4,
       width: screenWidth*0.9,
       decoration: BoxDecoration(
         color: Colors.white,
         borderRadius: BorderRadius.circular(10),
         boxShadow: [
           BoxShadow(
             color: Colors.black12.withOpacity(0.05),
             blurStyle: BlurStyle.normal,
             blurRadius: 10,
             spreadRadius: 2,
             offset: const Offset(0, 2),
           )
         ],
       ),
       child: Row(
         mainAxisAlignment: MainAxisAlignment.start,
         children: [
           Container(
             height: MediaQuery.of(context).size.height,
             width: MediaQuery.of(context).size.width*0.34,
             decoration: BoxDecoration(
               borderRadius:  const BorderRadius.only(
                   topLeft: Radius.circular(10),
                   bottomLeft: Radius.circular(10)
               ),
               image: DecorationImage(
                 image: NetworkImage(data[index].dressImage,),
                   fit: BoxFit.cover
               )
             ),
           ),
           Expanded(
               child: Padding(
                 padding: const EdgeInsets.all(10),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Wrap(
                           alignment: WrapAlignment.start,
                           children: [
                             Text(data[index].dressName,style: const TextStyle(fontSize: 16,fontFamily: 'Roboto',fontWeight: FontWeight.bold),)
                           ],
                         ),
                         const Wrap(
                           alignment: WrapAlignment.end,
                           children: [
                             Icon(Icons.more_vert,color: Colors.grey,)
                           ],
                         ),
                       ],),

                     Expanded(
                         child: Wrap(
                           alignment: WrapAlignment.start,
                           children: [
                             Wrap(
                               //alignment: WrapAlignment.start,
                               children: [
                                 const Text('Color:',style: TextStyle(color: Colors.grey,fontSize: 11),),
                                 const SizedBox(width: 5,),
                                 Text(data[index].dressColor,style: const TextStyle(fontSize: 11,fontWeight: FontWeight.normal,color: Colors.black),),

                                 const SizedBox(width: 15,),

                                 const Text('Size:',style: TextStyle(color: Colors.grey,fontSize: 11),),
                                 const SizedBox(width: 5,),
                                 Text(data[index].dressSize,style: const TextStyle(fontSize: 11,fontWeight: FontWeight.normal,color: Colors.black),),

                               ],
                           )
                           ],
                         )
                     ),
                     SizedBox(
                       width: MediaQuery.of(context).size.width,
                       height: (orientation == Orientation.portrait) ? screenHeight*0.05: screenHeight*0.16,
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Container(
                             alignment: Alignment.center,
                             decoration: BoxDecoration(
                               shape: BoxShape.circle,
                               color: Colors.white,
                               boxShadow: [
                                 BoxShadow(
                                   color: Colors.black12.withOpacity(0.05),
                                   blurStyle: BlurStyle.normal,
                                   blurRadius: 15,
                                   spreadRadius: 5,
                                   offset: const Offset(0,10)
                                 )
                               ]
                             ),
                             child: IconButton(onPressed: (){
                                    decreaseQuantity();
                             },icon: const Icon(Icons.remove),color: Colors.grey,iconSize: 24,),
                           ),
                           Wrap(
                             children: [
                               Text(data[index].quantity.toString(),style: const TextStyle(fontSize: 14,fontWeight: FontWeight.bold,fontFamily: 'Roboto'),)
                             ],
                           ),
                           Container(
                             alignment: Alignment.center,
                             decoration: BoxDecoration(
                                 shape: BoxShape.circle,
                                 color: Colors.white,
                                 boxShadow: [
                                   BoxShadow(
                                       color: Colors.black12.withOpacity(0.05),
                                       blurStyle: BlurStyle.normal,
                                       blurRadius: 15,
                                       spreadRadius: 5,
                                       offset: const Offset(0,10)
                                   )
                                 ]
                             ),
                             child: IconButton(onPressed: (){
                               increaseQuantity();
                             },icon: const Icon(Icons.add),color: Colors.grey,iconSize: 24,),
                           ),

                           Row(
                             mainAxisAlignment: MainAxisAlignment.end,
                             children: [
                               Wrap(
                                 alignment: WrapAlignment.end,
                                 children: [
                                   Text("${data[index].dressPrice * data[index].quantity}\$",
                                   style: const TextStyle(
                                     fontSize: 14,
                                     fontWeight: FontWeight.bold,
                                     fontFamily: 'Roboto'
                                   ),
                                   )
                                 ])
                             ],
                           )
                         ],
                       ),

                     )

                   ],
                 ),
               ))
         ],
       ),
     );


  }

}