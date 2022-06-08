import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  const ChartBar(this.label, this.totalAmount, this.totalAmountPrecentage,
      {Key? key})
      : super(key: key);
  final double totalAmount;
  final double totalAmountPrecentage;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FittedBox(
            fit: BoxFit.cover,
            child: Text("\$${totalAmount.toStringAsFixed(0)}")),
        const SizedBox(height: 4),
        Stack(
          children: [
            SizedBox(
              height: 60,
              width: 10,
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 1.0),
                      color: const Color.fromRGBO(220, 220, 220, 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  FractionallySizedBox(
                    heightFactor: totalAmountPrecentage,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 4,
            ),
          ],
        ),
        Text(label),
      ],
    );
  }
}
