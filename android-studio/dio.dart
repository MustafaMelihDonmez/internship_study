import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

void main(){
  runApp(DioPackage());

}

class DioPackage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DioPage(),
    );
  }
}

class DioPage extends StatefulWidget {
  @override
  State<DioPage> createState() => _DioPageState();
}

class _DioPageState extends State<DioPage> {

  Future<void> fetchData() async{
    BaseOptions bo = BaseOptions(
      baseUrl: "https://jsonplaceholder.typicode.com/",
    );
    final dio = Dio(bo);
    var response = await dio.get("todos/1");
    // var response = await dio.get("todos/1", queryParameters: {"month": "nov", "day": 5});
    print(response.data.toString());
    
    var post = await dio.post(
        "posts",
        data: {
          "userId": 2,
          "title": "başlık2",
          "body": "lorem ipsum"
        },
      onSendProgress: (int sent, int total){
          print(sent);
          print(total);
      }
    );
    print(post.data.toString());

    await dio.delete("posts/101");
    var response2 = await dio.get("todos/101");
    print(response2.data.toString());

    final formData = FormData.fromMap({
      "name": "dio",
      "date": DateTime.now()
    });
    final fdResponse = dio.post("posts", data: formData);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Center(
        child: Column(
          children: [
            TextButton(onPressed: () => fetchData(), child: Text("fetch data"))
          ],
        ),
      ),
    );
  }
}
