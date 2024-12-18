import 'package:ab_assessment/src/models/investment.dart';
import 'package:flutter/cupertino.dart';

List<Investment> dummyInvestments = [
  const Investment(
    name: 'Propertyvest Estate',
    image: AssetImage('assets/images/property_vest.png'),
    percentReturned: 20,
    timeToMaturity: '9 months',
    pricePerUnit: 5000,
    status: InvestmentStatus.stillSelling,
  ),
  const Investment(
    name: 'Cashew Nuts',
    image: AssetImage('assets/images/agritech.png'),
    percentReturned: 30,
    timeToMaturity: '9 months',
    pricePerUnit: 15000,
    status: InvestmentStatus.soldOut,
  ),
  const Investment(
    name: 'Cashew Nuts',
    image: AssetImage('assets/images/thrive.png'),
    percentReturned: 30,
    timeToMaturity: '9 months',
    pricePerUnit: 15000,
    status: InvestmentStatus.soldOut,
  ),
  const Investment(
    name: 'Propertyvest Estate',
    image: AssetImage('assets/images/property_vest.png'),
    percentReturned: 20,
    timeToMaturity: '9 months',
    pricePerUnit: 5000,
    status: InvestmentStatus.stillSelling,
  ),
  const Investment(
    name: 'Cashew Nuts',
    image: AssetImage('assets/images/agritech.png'),
    percentReturned: 30,
    timeToMaturity: '9 months',
    pricePerUnit: 15000,
    status: InvestmentStatus.soldOut,
  ),
  const Investment(
    name: 'Cashew Nuts',
    image: AssetImage('assets/images/thrive.png'),
    percentReturned: 30,
    timeToMaturity: '9 months',
    pricePerUnit: 15000,
    status: InvestmentStatus.soldOut,
  ),
];
