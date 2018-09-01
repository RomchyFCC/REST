#Documentation

Example read all posts GET request:

http://localhost:8888/Personal/RESTAPI/api/post/read.php

Example read a single post GET request:


http://localhost:8888/Personal/RESTAPI/api/post/read_single.php?id=1


Example create POST method:
On localhost it should look like this:

http://localhost:8888/Personal/RESTAPI/api/post/create.php

where the JSON you pass it would look like this:

{
	"title": "My New Post",
	"body": "something something pineapple",
	"author": "The Author of the post",
	"category_id": "1"
}

UPDATE PUT method is the same as create but we also need to pass the id in the JSON object:

http://localhost:8888/Personal/RESTAPI/api/post/update.php

{
  "title": "My New Title",
  "id": "1",
}

Delete method is the same as update but only the ID needs to get passed.

http://localhost:8888/Personal/RESTAPI/api/post/delete.php
