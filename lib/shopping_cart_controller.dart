import 'package:assignment_3_exercise/card_data.dart';

  class ShoppingCardController{

          int calculateTotalPrice(List<CardData> data) {
          int totalPrice = 0;
      for (CardData d in data) {
          totalPrice = totalPrice + d.dressPrice;
       }
    return totalPrice;
  }

  int increaseQuantity(int totalPrice, int index,List<CardData> data ) {
     if (data[index].quantity < 5) {
              data[index].quantity++;
              totalPrice =totalPrice + data[index].dressPrice;
  }
  return totalPrice;
  }

  int decreaseQuantity(int totalPrice, int index, List<CardData> data) {
       if (data[index].quantity > 1) {
             data[index].quantity--;
             totalPrice = totalPrice - data[index].dressPrice;
  }
  return totalPrice;
      }
  }
