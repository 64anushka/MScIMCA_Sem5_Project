import 'dart:convert';

List<DownloadModel> DownloadModelFromJson(String str) =>
    List<DownloadModel>.from(json.decode(str).map((x) => DownloadModel.fromJson(x)));

class DownloadModel {
  DownloadModel();

  
  factory DownloadModel.fromJson(Map<String, dynamic> json) =>DownloadModel(
        
     );

  Map<String, dynamic> toJson() => {
        
      };
}

