import 'package:requests/requests.dart';

Future<List<dynamic>> getVillages() async{
  String apikey = "";
  Response response = await Requests.get('https://opendata.aemet.es/opendata/api/maestro/municipios?api_key=$apikey');
  dynamic villages = response.json();
  return villages;
}