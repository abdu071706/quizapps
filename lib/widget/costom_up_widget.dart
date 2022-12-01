import 'package:flutter/material.dart';

class CostomPopUpWidget extends StatelessWidget {
  final void Function()? onTap;
  const CostomPopUpWidget({Key? key, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(left: 90),
        height: 40,
        width: 200,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 145, 145, 145),
          borderRadius: BorderRadius.all(Radius.circular(25)),
        ),
        child: Container(
          child: Center(
            child: Text(
              'Башкы бет',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}