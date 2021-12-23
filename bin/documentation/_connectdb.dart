import 'package:mongo_dart/mongo_dart.dart';

//Documentation
//Connecting to mongo database

void main(List<String> args) async {
  //Obtaining connection
  Db db = Db('mongodb://localhost:27017/testing');
  await db.open();
  print('Connected to database');

  //Close db connection (Always close the connection)
  await db.close();
}

/*
Why asynchronous code matters "async"
  Asynchronous operations let your program complete work while waiting 
  for another operation to finish. 
  
  Here are some common asynchronous operations:
    - Fetching data over a network.
    - Writing to a database.
    - Reading data from a file.

To perform asynchronous operations in Dart, you can use the 
Future class and the async and await keywords.
*/