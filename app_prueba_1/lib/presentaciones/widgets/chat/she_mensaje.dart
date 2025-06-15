import 'package:flutter/material.dart';

class SheMensaje extends StatelessWidget {
  const SheMensaje({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Column(
      //mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          //height: 5,      //width: 2,
          decoration: BoxDecoration(
            //color: Colors.black,
            color: colors.secondary,
            borderRadius: BorderRadius.circular(20),
          ),

          child: Padding(
            //padding: const EdgeInsets.all(3.0),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'Campo digital',
              style: TextStyle(fontSize: 14, color: Colors.white),
            ),
          ),
        ),
        SizedBox(height: 5),
        //todo: imagen
        _ImagenShe(),
        //SizedBox(height: 10),
      ],
    );
  }
}

class _ImagenShe extends StatelessWidget {
  //  const _ImagenShe  ({super.key});

  @override
  Widget build(BuildContext context) {
    //para saber las dimenciones del dispsitivo
    final size = MediaQuery.of(context).size;
    //print(size);

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        'https://yesno.wtf/assets/yes/14-b57c6dc03aa15a4b18f53eb50d6197ee.gif',

        width: size.width * 0.7,
        // height: size.height * 150,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) {
            return child;
          } else {
            return Container(
              width: size.width * 0.7,
              height: 150,
              alignment: Alignment.center,
              child: Column(
                children: [Text('Se esta enviando un mensaje...'),
                  const RefreshProgressIndicator(color: Colors.blue,),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
//api https://yesno.wtf