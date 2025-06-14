import 'package:flutter/material.dart';

class MensajesBox extends StatelessWidget {
  final ValueChanged<String> onValue;
  MensajesBox({super.key, required this.onValue});
  final outlineInputBorde = UnderlineInputBorder(
    borderSide: BorderSide(color: Colors.blue),
    borderRadius: BorderRadius.circular(20),
  );
  @override
  Widget build(BuildContext context) {
    final textControler = TextEditingController();
    // final colors = Theme.of(context).colorScheme;
    return TextFormField(
      controller: textControler,
      decoration: InputDecoration(
        hintText: 'termina tu mensaje con a ??',
        enabledBorder: outlineInputBorde,
        focusedErrorBorder: outlineInputBorde,
        filled: true,
        suffixIcon: IconButton(
          onPressed: () {
            //tomo el valor de la siguiente forma
            final textValue = textControler.value.text;
            // print('valor de textvalue $textValue');
            textControler.clear();
            onValue(textValue);
          },
          icon: Icon(Icons.send_outlined),
        ),
      ),

      onFieldSubmitted: (value) {
        //print('Submit: $value');
        textControler.clear();
        onValue(value);
      },

      /*  onChanged: (value) {
        print('Cambios : $value');
      }, */
    );
  }
}
