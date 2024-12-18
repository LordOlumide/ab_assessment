import 'package:flutter/material.dart';

enum InvestmentStatus { stillSelling, soldOut }

class Investment {
  final String name;
  final ImageProvider image;
  final double percentReturned;
  final String timeToMaturity;
  final double pricePerUnit;
  final InvestmentStatus status;
  final String company;

  const Investment({
    required this.name,
    required this.image,
    required this.percentReturned,
    required this.timeToMaturity,
    required this.pricePerUnit,
    required this.status,
    required this.company,
  });
}
