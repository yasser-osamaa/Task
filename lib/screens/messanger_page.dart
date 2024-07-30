import 'package:flutter/material.dart';
import 'package:login_page/widgets/custom_circle_avatar.dart';
import 'package:login_page/widgets/custom_container.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xFF0651CB),
        title: const Text(
          'Second Page',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 80,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return const AvatarPic(
                    img: 'assets/images/hoi.png',
                  );
                },
              ),
            ),
            const Divider(
              thickness: 1,
              color: Colors.grey,
            ),
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2, // count item by row
              mainAxisSpacing: 15, // x
              crossAxisSpacing: 15, // y
              //childAspectRatio: .5,
              // نسبه العرض بنسبه لل طول يعني نص دي معناها انه العرض واخد نص الطول عشان كدا طول زاد بقا ضعف
              children: const [
                CustomContainer(),
                CustomContainer(),
                CustomContainer(),
                CustomContainer(),
                CustomContainer(),
                CustomContainer(),
                CustomContainer(),
                CustomContainer(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
