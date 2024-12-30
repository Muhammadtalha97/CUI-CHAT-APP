import 'package:flutter/material.dart';

class NewContactTile extends StatelessWidget {
  const NewContactTile(
      {super.key,
      required this.btnName,
      required this.icon,
      required this.ontap});
  final String btnName;
  final IconData icon;
  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primaryContainer,
            borderRadius: BorderRadius.circular(20)),
        child: Row(
          children: [
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: BorderRadius.circular(100)),
              child: Icon(
                icon,
                size: 30,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              btnName,
              style: Theme.of(context).textTheme.bodyLarge,
            )
          ],
        ),
      ),
    );
  }
}
