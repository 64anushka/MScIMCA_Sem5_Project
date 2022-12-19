import 'package:http/http.dart' as http;
import 'dart:convert';
import '../model/downloadReport.dart';

class APIService {
  Future<List<DownloadModel>> DisplayRequest() async {
    final response = await http.post(Uri.parse('http://localhost:8090/api/admin/downloadreport'),  );
    if (response.statusCode == 200 || response.statusCode == 400) {
       List<DownloadModel> diversityModel =DownloadModelFromJson(response.body);
        
       return diversityModel;
    } else {
      throw Exception('Failed to load data!');
    }
  }
}