<?php
      $dsn = 'mysql:host=localhost;dbname=home';
      $username = 'root';
      $password = 'root';
      try {
      $pdo = new PDO($dsn, $username, $password);
      }
      catch (PDOException $e) {
      echo "Ошибка подключения к MySQL:" . $e->getMessage();};


      $login = $_POST['login'];
      $pass = $_POST['pass'];
      $prav = $_POST['prav'];
  
      if (empty($login) || empty($pass))
      {
          echo "заполните поля";
      } 
      else {$sql = "select * FROM  'polzov' WHERE login = '$login' AND porol = '$pass'";
            $result = $conn->query($sql);
            if  (['prav']=='2')
                    (header('Location: admin.html')); 
                else 
                (header('Location: ponel.html'));
            if ($result->num_rows > 0)
            {
                while($row = $result->fetch_assoc()){ 
                    
                    echo "добро пожалывать".$row['login'];
                }
            } else {
                echo "нет такого пользователя";
            }
        }
      ?>
      