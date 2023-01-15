import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final String name;
  final String price;
  final String shortcut;
  final IconData icon;
  final Color bgColor;
  final Color textColor;
  final Color iconColor;
  final int order;

  const CurrencyCard(
      {super.key,
      required this.name,
      required this.price,
      required this.shortcut,
      required this.icon,
      required this.bgColor,
      required this.textColor,
      required this.iconColor,
      required this.order});

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, order * -20),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(24),
              topRight: Radius.elliptical(35, 35)),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 16,
            horizontal: 24,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      color: textColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Text(
                        price,
                        style: TextStyle(
                          color: textColor,
                          fontSize: 12,
                        ),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        shortcut,
                        style: TextStyle(
                          color: textColor,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Transform.translate(
                offset: const Offset(5, 5),
                child: Transform.scale(
                  scale: 2,
                  child: Icon(
                    icon,
                    color: iconColor,
                    size: 96,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
