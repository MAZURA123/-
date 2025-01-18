<html lang="en">
  <head>
      <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>АФТОРИЗАЦИЯ</title>
</head>
<body>
    <div class="form_block">
    </div>
  <div class="form_block2">
  </div>
  <div class="form_auth_block">
    <div class="form_auth_block_content">
      <p class="form_auth_block_head_text">Авторизация</p>
         <form action="aftoriz.php">
            <label>Введите Ваш Логин</label>
              <input type="text" placeholder="login" name="login">
               <label>Введите Ваш Пароль</label>
               <input type="text" placeholder="password" name="pass">
               <Button class="form_auth_button2" type="submit">войти</Button> 
              </form>
            </div>
        </div>
      <style>
      .form_block{
        width: 100%;
       height: 150px;
       margin: 0 auto;
       background-color: #51C0F8;
       position: absolute;
       left: -1px;
       top: -1px;}
       .form_block2{
        width: 100%;
       height: 150px;
       margin: 0 auto;
       background-color: #51C0F8;
       position: absolute;
       left: -1px;
       top: 82.5%;}
      .form_auth_block{
      width: 500px;
      height: 370px;
      margin: 0 auto;
      background-color: #51C0F8;
      background-size: cover;
      border-radius: 10%;
      position: absolute;
      top:  50%;
      left: 50%;
      transform: translate(-50%,-50%)
      }
      .form_auth_block_content{
      padding-top: 5%;
      }
      .form_auth_block_head_text{
      display: block;
      text-align: center;
      padding: 10px;
      font-size: 20px;
      border-radius: 100px;
      font-weight: 600;
      background: #ffffff;
      opacity: 0.7;
      }
      .form_auth_block label{
      display: block;
      text-align: center;
      padding: 10px;
      border-radius: 100px;
      background: #ffffff;
      opacity: 0.7;
      font-weight: 600;
      margin-bottom: 10px;
      margin-top: 10px;
      }
      .form_auth_block input{
      display: block;
      margin: 0 auto;
      width: 80%;
      height: 45px;
      border-radius: 100px;  
      border:none;
      outline: none;
      }
      input:focus {
      color: #000000;
      border-radius: 100px;
      border: 2px solid #436fea;
      }
      .form_auth_button{
      display: block;
      width: 60px;
      margin: 0 auto;
      margin-top: 10px;
      border-radius: 10px;
      height: 35px;
      border: none;
      cursor: pointer;
      position: absolute;
      left: 30px;
      }
      .form_auth_button2{
      display: inline-block;
      background: #f8f9fa; 
      color: #070707;
      padding: 1rem 1.5rem; 
      text-decoration: none; 
      border-radius: 20px;
      position: absolute;
      top: 315px;
      left: 200px;}
      </style>
    </body>
  </html> 