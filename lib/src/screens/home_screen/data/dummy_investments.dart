import 'package:ab_assessment/src/models/investment.dart';
import 'package:ab_assessment/src/utils/utils_barrel.dart';
import 'package:flutter/cupertino.dart';

List<Investment> dummyInvestments = [
  const Investment(
    name: 'Propertyvest Estate',
    image: AssetImage(Assets.propertyVest),
    percentReturned: 20,
    timeToMaturity: '9 months',
    pricePerUnit: 5000,
    status: InvestmentStatus.stillSelling,
    company: 'PropertyVest',
  ),
  const Investment(
    name: 'Cashew Nuts',
    image: AssetImage(Assets.agritech),
    percentReturned: 30,
    timeToMaturity: '9 months',
    pricePerUnit: 15000,
    status: InvestmentStatus.soldOut,
    company: 'AgriTech',
  ),
  const Investment(
    name: 'Cashew Nuts',
    image: AssetImage(Assets.thrive),
    percentReturned: 30,
    timeToMaturity: '9 months',
    pricePerUnit: 15000,
    status: InvestmentStatus.soldOut,
    company: 'Thrive',
  ),
  const Investment(
    name: 'Propertyvest Estate',
    image: AssetImage(Assets.propertyVest),
    percentReturned: 20,
    timeToMaturity: '9 months',
    pricePerUnit: 5000,
    status: InvestmentStatus.stillSelling,
    company: 'PropertyVest',
  ),
  const Investment(
    name: 'Cashew Nuts',
    image: AssetImage(Assets.agritech),
    percentReturned: 30,
    timeToMaturity: '9 months',
    pricePerUnit: 15000,
    status: InvestmentStatus.soldOut,
    company: 'Agritech',
  ),
  const Investment(
    name: 'Cashew Nuts',
    image: AssetImage(Assets.thrive),
    percentReturned: 30,
    timeToMaturity: '9 months',
    pricePerUnit: 15000,
    status: InvestmentStatus.soldOut,
    company: 'Thrive',
  ),
];
