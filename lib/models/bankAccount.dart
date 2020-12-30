import 'package:MeroPaisa/constants/colorConstant.dart';
import 'package:flutter/material.dart';

class BankAccountModel {
  String name;
  String type;
  String balance;
  String valid;
  Color bgColor;
  Color firstColor;
  Color secondColor;

  BankAccountModel(this.name, this.type, this.balance, this.valid, this.bgColor, this.firstColor, this.secondColor);
}

List<BankAccountModel> bankAccounts = bankData
    .map((item) => BankAccountModel(
        item['name'],
        item['type'],
        item['balance'],
        item['valid'],
        item['bgColor'],
        item['firstColor'],
        item['secondColor']))
    .toList();

var bankData = [
  {
    "name": "Himalayan Bank",
    "type": "Bank",
    "balance": "6.352",
    "valid": "06/24",
    "bgColor": kMasterCardColor,
  },
  {
    "name": "Prabhu Bank",
    "type": "Bank",
    "balance": "20.528",
    "valid": "02/23",
    "bgColor": kMasterCardColor,
  },

  {
    "name": "Nepal Investment Bank",
    "type": "Bank",
    "balance": "6.352",
    "valid": "06/24",
    "bgColor": kMasterCardColor,
  },
];