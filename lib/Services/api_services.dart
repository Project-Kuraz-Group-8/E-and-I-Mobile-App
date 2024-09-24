import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiServices {
  static Future<void> sendingData(String name, String email, String password, String role, String location, String phone_number, String bio, String social_media_links) async{

   try {
     final response = await http.post(
         Uri.parse(''),
         body: {
           'name': name,
           'email': email,
           'password': password,
           'role' : role,
           'location':location,
           'phone_number' : phone_number,
           'bio': bio,
           'social_media_links' : social_media_links,

         }
     );

     if (response.statusCode == 200) {
       final responseData = json.decode(response.body);
       if (responseData['error']) {
         print('Error: ${responseData['message']}');
       }
       else if (responseData['success']) {
         print('Success: ${responseData['message']}');
       }
       else {
         print('Server error: $response.statusCode}');
       }
     }
   } catch(e){
     print('Error: $e');
   }

  }

  static Future<List<dynamic>> fetchData() async{
    try{
      final response = await http.get(Uri.parse('http://localhost:8000/api/fetch'));

      if (response.statusCode == 200) {
        List<dynamic> data = jsonDecode(response.body);
        return data;
      } else {
        print('Server error: ${response.statusCode}');
        return [];
      }
    } catch (e) {
      print('Error: $e');
      return [];
    }
  }

}