import 'package:ars/Utils/app_color.dart';
import 'package:ars/widgets/button.dart';
import 'package:flutter/material.dart';

class Alertdialog extends StatelessWidget {
  const Alertdialog({Key? key}) : super(key: key);

  dialogContent(BuildContext context) {
   
    return Container(
      width: 200,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration:  BoxDecoration(
        color:AppColor.bgColor,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            offset: Offset(0.0, 10.0),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 50.0),
          const Text(
            'Successful',
            textAlign: TextAlign.center,
            style: TextStyle(color: AppColor.cardColor,fontWeight: FontWeight.bold,fontSize: 18),
          ),
          const SizedBox(height: 20.0),
          const Text(
            'Your report has been recorded\n successfully',
            textAlign: TextAlign.center,
            style: TextStyle(color: AppColor.primaryColor,fontWeight: FontWeight.w500,),
          ),
          const SizedBox(height: 20.0),
          Image.asset('images/tick.png',
          height: 100,
          width: 100,
          ),
          const SizedBox(height: 40.0),
          Center(
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Button(
                  text: 'Cancel',
              )
            ),
          ),
          const SizedBox(height: 40.0),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 0.0,
      backgroundColor: AppColor.whiteColor,
      child: dialogContent(context),
    );
  }
}
