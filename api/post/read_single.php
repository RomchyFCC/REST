<?php
  // Headers
  header('Access-Control-Allow-Origin: *');
  header('Content-Type: application/json');

  include_once '../../config/Database.php';
  include_once '../../models/Post.php';

  // Instantiate DB & connect
  $database = new Database();
  $db = $database->connect();

  // Instantiate blog post object
  $post = new Post($db);


  // Get ID
  $post->id = isset($_GET['id']) ? $_GET['id'] : rand(1,63);

  // get post
  $post->read_single();

  // create array
    $post_arr = array(
        'id' => $post->id,
        'title' => $post->title,
        'body' => $post->body,
        'author' => $post->author,
      );

      // Push to 'data'
    print_r(json_encode($post_arr));