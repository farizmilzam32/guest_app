import 'dart:convert';
import 'package:http/http.dart' as http;

class UserData{
  late String id; 
  late String email;
  late String firstname;
  late String lastname;
  late String avatar; 
  
  UserData({required this.id, required this.email, required this.firstname, required this.lastname, required this.avatar});
  
  factory UserData.createUserData(Map<String, dynamic> object){
    return UserData(id: object['id'].toString(),firstname: object['first_name'], avatar: object['avatar'], lastname: object['last_name'], email: object['email']);
  }

  static Future<List<UserData>> getUsers(String page)  async {
    String apiURL = 'https://reqres.in/api/users?page=' + page;
    var apiResult = await http.get(Uri.parse(apiURL));
    var jsonObject = json.decode(apiResult.body);
    List<dynamic> listUser = (jsonObject as Map<String,dynamic>)['data'];
    List<UserData> users = [];
    for(int i = 0; i <listUser.length; i++)
      users.add(UserData.createUserData(listUser[i]));
    return users;
  }

}