import 'dart:math';

import 'package:flutter/material.dart';

class RolldiceScreen extends StatefulWidget {
  const RolldiceScreen({super.key});

  @override
  State<RolldiceScreen> createState() => _RolldiceScreenState();
}

int activedice = 4;
List<String> diceImage= ['https://th.bing.com/th/id/R.e9049ddb86d5f15b2ca705613121fdaa?rik=Pue4Sszw5%2bbvQg&riu=http%3a%2f%2fbestanimations.com%2fGames%2fDice%2frolling-dice-gif-3.gif&ehk=C1A7Ydk7jxF4n1B0jLaLASwbSvNL%2b%2fKydskh4qlbVTg%3d&risl=&pid=ImgRaw&r=0',
'https://cdna.artstation.com/p/assets/images/images/010/772/318/original/nabeel-najeeb-dicegif.gif?1526145052','https://th.bing.com/th/id/R.0876b8070822cac5906ae8595a69ecb6?rik=TS9RpHJaqsnC%2bQ&riu=http%3a%2f%2fpngimg.com%2fuploads%2fdice%2fdice_PNG146.png&ehk=DcMO49Q0uxCtAPstawI5adOSBbTetoG05M5I9l%2fRC10%3d&risl=&pid=ImgRaw&r=0', 'https://th.bing.com/th/id/R.e9049ddb86d5f15b2ca705613121fdaa?rik=Pue4Sszw5%2bbvQg&riu=http%3a%2f%2fbestanimations.com%2fGames%2fDice%2frolling-dice-gif-3.gif&ehk=C1A7Ydk7jxF4n1B0jLaLASwbSvNL%2b%2fKydskh4qlbVTg%3d&risl=&pid=ImgRaw&r=0',
'https://www.clipartmax.com/png/small/125-1254486_bunco-dice-clipart-panda-free-image-clipart-dice-coloring-page.png'];
class _RolldiceScreenState extends State<RolldiceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [Colors.blue, Colors.purple],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft
          )),
          child: Center(child: Column(
            mainAxisSize: MainAxisSize.min ,
            children: [
              const Text('RollDice',
              style: TextStyle(
                fontSize: 38,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ), ),
              const SizedBox(
                height: 10,
              ),
              Image.network(diceImage[activedice],
              width: 200,
              ),
              const SizedBox(
                height: 20,
              ),
              TextButton(onPressed: (){
                var runNum =Random().nextInt(4);
                setState(() {
                  activedice =runNum;
                });
                print('button pressed');
              }, child: const Text('Roll',style: TextStyle(fontSize: 18, color: Colors.white),))
            ],
          ),),
      ),
    );
  }
}