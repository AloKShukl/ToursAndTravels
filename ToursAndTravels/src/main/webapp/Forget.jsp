<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Forget password</title>
    <style>
    	:root {
            --orange: #ffa500;
        }

        * {
            font-family: 'Nunito', sans-serif;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            text-transform: capitalize;
            text-decoration: none;
            transition: all .2s linear;
        }

        html {
            font-size: 62.5%;
            overflow-x: hidden;
            scroll-padding-top: 6rem;
            scroll-behavior: smooth;
        }
        body{
            background: url("Images/ForgetBackground.jpg") center;
            display: flex;
            justify-content: center;
            text-align: center;
        }
        #container{
            height: 60%;
            width: 50%;
            border-radius: 5px;
            border: 1px solid var(--orange);
            align-content: center;
            justify-content: center;
            position: absolute;
            display: flex;
            flex-wrap: wrap;
            top: 20%;
        }
        #form-group{
            height: 5vh;
            width: 40vw;
            align-self: center;
            margin: 30px;
        }
        #form-group input{
            height: 5vh;
            width: 35vw;
            padding: 10px;
            border: 1px inset var(--orange);
            border-radius: 10px;
        }
        h2{
            color: var(--orange);
            font-size:2rem;
        }
       #form-group #btn{
            display: inline-block;
            margin-top: 1rem;
            background: var(--orange);
            color: #fff;
            padding: .8rem 3rem;
            border: .2rem solid var(--orange);
            cursor: pointer;
            font-size: 1.7rem;
        }
        #form-group #btn:hover {
            background: rgba(255, 165, 0, .2);
            color: var(--orange);
        }

		@media (max-width:650px){
			#container {
				width: 90%; 
			}
			#form-group input{
				width:70vw;
				
			}
			#form-group {
				width:70vw;
				margin: 25px
			}
		}
    </style>
</head>
<body>
    <div id="container">   
          <h2>Password Reset</h2>
            <form action="PasswordForgetServlet" method="post">
                <div id="form-group">
                     <input type="text" name="email" id="text" placeholder="Enter Your Email " required>
                </div>
                <div id="form-group">   
                     <input type="password" name="pass" id="text" placeholder="Enter your new-Password" required>
                </div>
                <div id="form-group">   
                    <input type="password" name="pass1" id="text" placeholder="Confirm Your New Re-Password" required>
               </div> 
                <div id="form-group">
                    <button type="submit" id="btn">Change Password</button>
                </div>
            </form>   
        </div>
</body>
</html>