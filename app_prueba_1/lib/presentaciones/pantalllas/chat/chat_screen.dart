import 'package:app_prueba_1/presentaciones/widgets/chat/my_message.dart';
import 'package:app_prueba_1/presentaciones/widgets/chat/she_mensaje.dart';
import 'package:app_prueba_1/presentaciones/widgets/compartidos/mensajes_box.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[200],
        title: Text(
          'ZBOT',
          style: GoogleFonts.lato(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.blueGrey[800],
          ),
        ),

        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              onPressed: () {
                // Scaffold.of(context).openDrawer();
              },
              icon: Icon(
                Icons.rocket_launch_outlined,
                size: 30,
                color: Colors.blueGrey[800],
              ),
            );
          },
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.info_outline, color: Colors.blueGrey[800]),
          ),
        ],
      ),
      // body: _ChatVista(),
      body: _ChatVista(),
    );
  }
}

class _ChatVista extends StatelessWidget {
  // const _ChatVista({   super.key, });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      // left: false,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            //  Text('data'),
            //Expanded(child: Container(color: Colors.amber)),
            Expanded(
              child: ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  // return Text('Indice : $index');
                  return (index %2== 0)? SheMensaje() :  MyMessage();
                },
              ),
            ),
            //caja de texto
            MensajesBox(),
           // Text('Ibarra'),
          ],
        ),
      ),
    );
  }
}

/* class _ChatVista extends StatelessWidget {
  //onst _ChatVista({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
            'https://static.wikia.nocookie.net/doblaje/images/3/3c/HomerSimpson.png/revision/latest?cb=20220925232034&path-prefix=es',
          ),
          //fit: BoxFit.contain,
        ),
      ),
    );
  }
}
 */
