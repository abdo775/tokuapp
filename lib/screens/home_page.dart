import 'package:flutter/material.dart';
import 'package:toku/screens/numbers_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffcfd4b5),
      appBar: AppBar(
        backgroundColor: Color(0xff502a1d),
        title: Text('Toku'),
      ),
      body: Column(children: [
        // Container(
        //   padding: EdgeInsets.only(left: 24),
        //   alignment: Alignment.centerLeft,
        //   // alignment de bst5dmha 34an a7rk elwidget
        //   height: 66,
        //   width: double.infinity,
        //   // double infinty de lw msln 7ttha gnb el width  zy fo2 kda bta5od kol el width el mota7
        //   color: Colors.orange,
        //   child: Text('Numbers',
        //       style: TextStyle(fontSize: 18, color: Colors.white)),
        // ),
        // Container(
        //   padding: EdgeInsets.only(left: 24),
        //   alignment: Alignment.centerLeft,
        //   // alignment de bst5dmha 34an a7rk elwidget
        //   height: 66,
        //   width: double.infinity,
        //   // double infinty de lw msln 7ttha gnb el width  zy fo2 kda bta5od kol el width el mota7
        //   color: Color(0xff177723),
        //   child: Text('Family Members',
        //       style: TextStyle(fontSize: 18, color: Colors.white)),
        // ),
        // Container(
        //   padding: EdgeInsets.only(left: 24),
        //   alignment: Alignment.centerLeft,
        //   // alignment de bst5dmha 34an a7rk elwidget
        //   height: 66,
        //   width: double.infinity,
        //   // double infinty de lw msln 7ttha gnb el width  zy fo2 kda bta5od kol el width el mota7
        //   color: Color(0xff7416ab),
        //   child: Text('Colors',
        //       style: TextStyle(fontSize: 18, color: Colors.white)),
        // ),
        // Container(
        //   padding: EdgeInsets.only(left: 24),
        //   alignment: Alignment.centerLeft,
        //   // alignment de bst5dmha 34an a7rk elwidget
        //   height: 66,
        //   width: double.infinity,
        //   // double infinty de lw msln 7ttha gnb el width  zy fo2 kda bta5od kol el width el mota7
        //   color: Color(0xff5ba0ef),
        //   child: Text('Phrasses',
        //       style: TextStyle(fontSize: 18, color: Colors.white)),
        // ),
        //  طالما عندي اكتر من ويدجت كلهم شبه بعض والفرق بينهم بسيط زي الاسم
        //  واللون بس وكده بعمل كستم ويدجت(ويدجت خاصه) وزي منا موضح هنا وده حل اخر واحسن عشان يكون كود نضيف وبسيط
        Cateory('Number', Color(0xffe18519), knTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (Context) {
            return NumbersPage();
          }));
          //  عشان احط بيدج جوه بيدج لازم بستخدم نافيجاتور
          //  واسيب كونتكست وامسح ال جنبها واحط ماتريال بيدج راوت زي ماهو فوق كده
          //  البيلدر هعمله جنبه اقوس الميثود وجوه الاقواس العاديه لازم بككتب كونتكست
          //  عشان بيلدر بتاخد كونتكست وبعدين فالكبرلي اقواس بعمل
          //  وعملت عشانها كل ده ريترن للملف بتاع البيدج ال المفروض هتتحط
        }),
        Cateory(
          'Family Numbers',
          Color(0xff318e25),
          knTap: () {
            print('Family Numbers Tapped');
          },
        ),
        Cateory('Colors', Color(0xff64167c)),
        Cateory('Pharses', Color(0xff2683b9)),
      ]),
    );
  }
}

class Cateory extends StatelessWidget {
  Cateory(this.text, this.color, {this.knTap});
  String? text;
  Color? color;
  Function()? knTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // GesturDetector de 34an lma ados 3la 2y widget td5lny 3la its inside page
      // we ontap de 34n a3ml click we 34an 2fhm 2ktr arage3 el mesal dh
      //  notice / kntap de 2sm function we lazem bst3ml function
      onTap: knTap,
      child: Container(
        padding: EdgeInsets.only(left: 24),
        alignment: Alignment.centerLeft,
        // alignment de bst5dmha 34an a7rk elwidget
        height: 66,
        width: double.infinity,
        // double infinty de lw msln 7ttha gnb el width  zy fo2 kda bta5od kol el width el mota7
        color: color!,
        child: Text(text!, style: TextStyle(fontSize: 18, color: Colors.white)),
      ),
    );
  }
}
