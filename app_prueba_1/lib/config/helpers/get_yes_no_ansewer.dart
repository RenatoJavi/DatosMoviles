import 'package:app_prueba_1/dominio/entidades/message.dart';
import 'package:app_prueba_1/infraestructura/modelos/yes_no_modelo.dart';
import 'package:dio/dio.dart';
//import 'package:http/http.dart' as http;

class GetYesNoAnsewer {
  final url = Uri.http('authority');

  final _dio = Dio();

  Future<Memsaje> getAnswer() async {
    final response = await _dio.get('https://yesno.wtf/api');
    
    final yesNoModel = YesNoModel.fromJsonMap(response.data);

    return yesNoModel.toMessageEntity();
    /*
    return Memsaje(
      //text: response.data['aswer'],

       
      text: yesNoModel.answer,
      fromQuien: FromQuien.ella,
     
      //imageUrl: response.data['image'],
      imageUrl: yesNoModel.image,
    ); */

    //throw UnimplementedError();
  }
}

//GetYesNoAnsewer
