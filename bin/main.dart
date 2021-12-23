import 'dart:io';
import 'dart:convert';
import 'package:mongo_dart/mongo_dart.dart';

void main(List<String> arguments) async {
  int port = 8086;
  var server = await HttpServer.bind('localhost', port);
  //Connecting to mongo database
  Db db = Db('mongodb://localhost:27017/testing');

  await db.open(); //If you open the database make sure you close.

  print('Connected to database');

  DbCollection coll = db.collection('people');

  server.listen((HttpRequest request) async {
    switch (request.uri.path) {
      case '/':
        request.response.write('Hello World!');
        await request.response.close();
        break;
      case '/people':
        //TODO: handle GET request
        //Run in terminal => curl http://localhost:8086/people
        //This will display all the data
        if (request.method == 'GET') {
          request.response.write(await coll.find().toList());
        }
        //TODO: handle POST request
        else if (request.method == 'POST') {
          var content =
              await request.cast<List<int>>().transform(Utf8Decoder()).join();
          print(content);
          //You can also decode
          var data = json.decode(content);
          print(data['name']);
        }
        //TODO: handle PUT request
        else if (request.method == 'PUT') {
        }
        //TODO: handle DELETE request
        else if (request.method == 'DELETE') {
        }
        //TODO: handle PATCH request
        else if (request.method == 'PATCH') {}
        await request.response.close();
        break;
      default:
        request.response
          ..statusCode = HttpStatus.notFound
          ..write('Not Found')
          ..close();
    }
  });
  print('Server listening to localhost:$port');
  //Close db connection
  //await db.close();
}
