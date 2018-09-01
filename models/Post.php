<?php 

class Post {
  // DN stuff
  private $conn;
  private $table = 'posts';

  // post properties
  public $id;
  public $title;
  public $body;
  public $author;
  public $created_at;

  // Constructor with DB
  public function __construct($db) {
    $this->conn = $db;
  }

  // Get Posts
  public function read() {
    // Create query
    $query = 'SELECT 
              p.id,
              p.title,
              p.body,
              p.author,
              p.created_at
              FROM
              ' . $this->table . ' p
              ORDER BY
                p.created_at DESC';
    // Prepare statement
    $stmt = $this->conn->prepare($query);

    // Execute query
    $stmt->execute();

    return $stmt;
  }

  // Get single post
  public function read_single() {
    $query = 'SELECT 
                p.id,
                p.title,
                p.body,
                p.author,
                p.created_at
              FROM
                ' . $this->table . ' p
              WHERE 
                p.id = ? 
              LIMIT 0,1';
  
    // Prepare statement
    $stmt = $this->conn->prepare($query);

    // Bind ID
    $stmt->bindParam(1, $this->id);

    // Execute query
    $stmt->execute();

    $row = $stmt->fetch(PDO::FETCH_ASSOC);

    // Set properties
    $this->title = $row['title'];
    $this->body = $row['body'];
    $this->author = $row['author'];
  }

  // create post
  public function create() {
    // query
    $query = 'INSERT INTO ' . $this->table . '
      SET 
        title = :title,
        body = :body,
        author = :author';
    // Prepare statement
    $stmt = $this->conn->prepare($query);

    // Clean data
    $this->title = htmlspecialchars(strip_tags($this->title));
    $this->body = htmlspecialchars(strip_tags($this->body));
    $this->author = htmlspecialchars(strip_tags($this->author));

    // bind data
    $stmt->bindParam(':title', $this->title);
    $stmt->bindParam(':body', $this->body);
    $stmt->bindParam(':author', $this->author);

    // execute query
    if ($stmt->execute()) {
      return true;
    }

    // print error if problem
    printf("Error: %s. \n", $stmt->error);

    return false;
  }

  // Update post
  public function update() {
    // query
    $query = 'UPDATE ' . $this->table . '
      SET 
        title = :title,
        body = :body,
        author = :author
      WHERE
        id = :id';

    // Prepare statement
    $stmt = $this->conn->prepare($query);

    // Clean data
    $this->title = htmlspecialchars(strip_tags($this->title));
    $this->body = htmlspecialchars(strip_tags($this->body));
    $this->author = htmlspecialchars(strip_tags($this->author));
    $this->id = htmlspecialchars(strip_tags($this->id));

    // bind data
    $stmt->bindParam(':title', $this->title);
    $stmt->bindParam(':body', $this->body);
    $stmt->bindParam(':author', $this->author);
    $stmt->bindParam(':id', $this->id);

    // execute query
    if ($stmt->execute()) {
      return true;
    }

    // print error if problem
    printf("Error: %s. \n", $stmt->error);

    return false;
  }

  // Delete post
  public function delete() {
    // create query
    $query = 'DELETE FROM ' . $this->table . ' WHERE id = :id';

    // prepare statement
    $stmt = $this->conn->prepare($query);

    // clean data
    $this->id = htmlspecialchars(strip_tags($this->id));

    // bind data
    $stmt->bindParam(':id', $this->id);

    // execute query
    if ($stmt->execute()) {
      return true;
    }

    // print error
    printf("Error: %s.\n", $stmt->error);

    return false;
  }
}