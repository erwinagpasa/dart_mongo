A simple command-line application.

# Dart and MongoDB

<h2>Upload json dataset into database</h2>

1. Start your MongoDB server

```
mongo or mongod
```

2. Import person.json with mongoimport executable

```
mongoimport --jsonArray -d <yourDatabaseName> -c <yourCollectionName> --file <path/To/File.json>
```

<h2>Run the project</h2>

Start the server

```
dart run
```

Connect to server

```
curl http://localhost:8086
```
