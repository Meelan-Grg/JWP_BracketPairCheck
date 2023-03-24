<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Check Balanced Brackets</title>
        <style>
         * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;

        }

        .container {
            height: 100vh;
            width: 100%;
            background: linear-gradient(106.4deg, rgb(255, 104, 192) 11.1%, rgb(104, 84, 249) 81.3%);
            height: auto;

        }
        h1{
            -webkit-text-stroke-color: white;
            color: white;
           
        }

        .content {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            flex-direction: column;
        }

        button {
            outline: none;
            border: 0;
color: white;
            padding: 15px;
            font-size: 14px;
            /* border-left: 1px solid rgb(170, 170, 170); */
            background: linear-gradient(110.6deg, rgb(184, 142, 252) 2.2%, rgb(104, 119, 244) 100.2%);
            border-top-right-radius: 5px;
            border-bottom-right-radius: 5px;
        }

        input {
            outline: none;
            padding: 15px;
            border: 0;
            background-color: transparent;
           

        }
        .input-container{
            background-color: white;
            /* border: 1px solid rgb(170, 170, 170); */
            border-radius: 5px;
            box-shadow: rgba(0, 0, 0, 0.16) 0px 10px 36px 0px, rgba(0, 0, 0, 0.06) 0px 0px 0px 1px;
        }
        label{
            color: white;
            font-size: 20px;
            padding-top: 20px;
        }
        h1{
            padding: 30px;
            font-size: 50px;
        }
        p{
            font-size: 30px;
            color: white;
        }
    </style>
</head>

<body>
   <div class="container">
        <div></div>
        <div class="content">
            <div></div>
            <h1>Check Balanced Brackets:</h1>
            <p><%= request.getAttribute("output") %></p>    
        </div>
    </div>
</body>
</html>