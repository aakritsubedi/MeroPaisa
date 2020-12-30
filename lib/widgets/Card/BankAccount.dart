import 'package:MeroPaisa/constants/colorConstant.dart';
import 'package:MeroPaisa/models/bankAccount.dart';
import 'package:flutter/widgets.dart';

class BankAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.0),
      height: 175.0,
      child: ListView.builder(
        itemCount: bankAccounts.length,
        physics: ClampingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(right: 10.0),
            height: 175.0,
            width: 225.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: bankAccounts[index].bgColor,
                boxShadow: [
                  BoxShadow(
                      color: Color(0x10000000),
                      blurRadius: 5,
                      spreadRadius: 2,
                      offset: Offset(0.0, 4.0))
                ]),
            child: Container(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(bankAccounts[index].name, style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18.0)),
                  Text(bankAccounts[index].type, style: TextStyle(fontWeight: FontWeight.w300, fontSize: 12.0)),
                  SizedBox(height: 10.0),
                  Text('Current balance', style: TextStyle(fontWeight: FontWeight.w200, color: kBlackColor)),
                  Text('Rs ${bankAccounts[index].balance}', style: TextStyle(fontWeight: FontWeight.w700, color: kBlackColor, fontSize: 20.0)),
                  SizedBox(height: 20.0),
                  Text('Valid Through', style: TextStyle(fontWeight: FontWeight.w200, color: kBlackColor, fontSize: 12.0)),
                  Text(bankAccounts[index].valid, style: TextStyle(fontWeight: FontWeight.w300, color: bankAccounts[index].firstColor, fontSize: 10.0)),
                  SizedBox(height: 5.0),
                  Text('View Details', style: TextStyle(fontWeight: FontWeight.w300, color: bankAccounts[index].firstColor, fontSize: 10.0)),
                ],
              ),
            )
          );
        },
      ),
    );
  }
}
