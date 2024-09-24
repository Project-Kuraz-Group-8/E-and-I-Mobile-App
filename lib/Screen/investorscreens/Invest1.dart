import 'package:flutter/material.dart';

class Invest1 extends StatefulWidget {
  const Invest1({super.key});

  @override
  State<Invest1> createState() => _Invest1State();
}

enum paymentMethod{
  bankAccount,
  teleBirr,
}




class _Invest1State extends State<Invest1> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Invest in idea title',
        ),
      ),
      body: Container(
        height: 350,
        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[

            const Divider(
              color: Colors.black,
            ),

            const Text(
              'How much would you like to invest?',
              style: TextStyle(
                fontSize: 20,
                height: 2,

              )
            ),

            TextField(
              style: const TextStyle(
                fontSize: 20,
              ),
              onChanged: (value) {
                //TODO
              },
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 20.0, horizontal: 10),
                  filled: true,
                  fillColor: const Color(0xffF1F5FD),
                  hintText: '500br',
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(15),
                  )),
            ),

            const Text(
              'Terms',
              style: TextStyle(
                fontSize: 25,
                height: 1.5,
              ),
            ),

            const Text(
              'Future equity br 30.00 valuation cap.',
              style: TextStyle(
                fontSize: 16,
              ),
            ),

            Container(
              height: 60,
              width: double.maxFinite,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: const Color(0xff909090),

              ),
              child: TextButton(
                  onPressed: (){


                    Navigator.push(context,
                    MaterialPageRoute(builder: (context){
                      return const Invest2();

                    }));
                  },
                child: const Text(
                'Next',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
              ),
            ),
          ]
        ),
      )
    );
  }
}

class Invest2 extends StatefulWidget {
  const Invest2({super.key});

  @override
  State<Invest2> createState() => _Invest2State();
}

class _Invest2State extends State<Invest2> {

  paymentMethod? payment;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Invest in idea title',
          style: TextStyle(
            fontSize: 20,

          ),
        ),
      ),
      body: Container(
        height: 350,
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'How do you want to pay?',
              style: TextStyle(
                fontSize: 25,
              )
            ),
            ListTile(
              title: const Text('Bank Account'),
              leading: Radio<paymentMethod>(
                value: paymentMethod.bankAccount,
                groupValue: payment,
                onChanged: (paymentMethod? value) {
                  setState(() {
                    payment = value;
                  });
                },
              ),
            ),
            ListTile(
              title: const Text('Telebirr'),
              leading: Radio<paymentMethod>(
                value: paymentMethod.teleBirr,
                groupValue: payment,
                onChanged: (paymentMethod? value) {
                  setState(() {
                    payment = value;
                  });
                },
              ),
            ),
          ],

        ),
      ),
    );
  }
}

