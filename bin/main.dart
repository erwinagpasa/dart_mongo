import 'package:mongo_dart/mongo_dart.dart';

void main(List<String> arguments) async {
  Db db = Db('mongodb://localhost:27017/testing');

  await db.open(); //If you open the database make sure you close.

  print('Connectec to database');

  DbCollection coll = db.collection('people');

  //TODO: Read people
  //Full list of data
  //var people = await coll.find().toList();
  //Using find Where.eq (match check if the field contain set of character lik A)
  var people = await coll.find(where.eq('first_name', 'Arleen')).toList();
  //Using Limit
  //var people = await coll.find(where.limit(5)).toList();
  print(people);

  //TODO: Create person

  //TODO: Update person

  //TODO: Delete person
  await db.close();
}
