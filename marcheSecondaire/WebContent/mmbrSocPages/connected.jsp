<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta charset="utf-8" />
        <title>Bienvenue Investisseur</title>
        <style>
body{
     margin:0;
     padding:0;
     }
header{
      position: absolute;
      height: 10%;
      width: 100%;
      background-color: #07163B;
      }
footer{
       position: absolute;
       top:95%;
       height: 10%;
       width: 100%;
       background-color: #07163B;
       }
p, legend, label, input {
       font: normal 11pt Bell MT, helvetica, sans-serif;
       }
fieldset{
        padding: 10px;
        border: 1px #07163B solid;
        }
legend{
        font-weight: bold;
        color: #07163B;
        }
form label{
         float: left;
         width: 200px;
         margin: 3px 0px 0px 0px;
         }
form input{
          margin: 0px 3px 0px 0px;
          border: 1px #999 solid;
          }
form input.sansLabel{
         margin-left: 320px;
         }
form .requis{
          color: #c00;
          }
#SignUp{
       position: absolute;
       top:10%; 
       width: 100%;
       height: 85%;
       background-color: #DBDFE7;
       }
#forminfoste{
       position: absolute;
       top:10%; 
       width: 100%;
       height: 85%;
       background-color: #CAD1F9;
       }
#connexion{
       position: absolute;
       top:10%; 
       width: 100%;
       height: 85%;
       background-color: #DBDFE7;
       }
#formste{
            position: relative;
            margin-top: 100px;
            } 
#formulaireconnexion{
            position: relative;
            margin-top: 100px;
            }                          
#wal{
     position: absolute;
     top:10%; 
     height: 85%;
     width: 100%;
    }
#slogan{
        position: absolute;
        top:35%; 
        left:5%;
        font-family: Bell MT;
        font-size: 55px;
        font-weight: 900;
        color: #FEFEFF;
        }
#bienvenue{
        position: absolute;
        top:35%; 
        left:5%;
        font-family: Bell MT;
        font-size: 30px;
        font-weight: 900;
        color: #FEFEFF;
        }
#AM{
    position: relative;
    margin:0;
    padding: 0;
    left:150px;
    top:20px;
    float: left;
    font-family: Bell MT;
    font-size: 30px;
    color: #FEFEFF;
    }
#menu{
      position: relative;
      margin:0;
      padding:0;
      right:50px;
      top : 25px;
      float: right;
      }
            #menu-deroulant{
                margin: 0;
                padding: 0;
                list-style-type: none;
            }
            #menu-deroulant ul{
                position: relative;
                padding: 0;
                margin: 0;
                padding-top: 5px; 
            }
            #menu-deroulant li {
                display:inline-block;
                margin: 0;
                padding-right: 50px;
                font-family: Bell MT;
                font-size: 20px;
            }
            #menu-deroulant ul li {
                display: inherit;
                background-color: #07163B;
                position: relative;
                padding: 5px;

            }
            #menu-deroulant a {
                text-decoration: none;
                color:#FEFEFF;
            }
            #menu-deroulant ul a {
                text-decoration: none;
                color: #FEFEFF;
            }
            #menu-deroulant ul {
                position: absolute;
                left: -999em;
                text-align: left;
                z-index: 1000;
            }
            #menu-deroulant li:hover ul {
                left: auto;
            }
.succes {
    color: #090;
}
.erreur {
    color: #900;
}   
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:black;}
.tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:black;}
.tg .tg-7btt{font-weight:bold;border-color:inherit;text-align:center;vertical-align:top}
.tg .tg-0lax{text-align:left;vertical-align:top}
    </style>
    </head>
    <body>
       <header>
            <p id="AM"> AssetMarket </p>
            <div id="menu">
                <ul id="menu-deroulant">
                    <li><a href="mmbrSocPages/connected?page=2">Infos Société </a></li>
                    <li><a href="mmbrSocPages/connected?page=3">Nouvelle Offre </a></li>
                    <li><a href="/marcheSecondaire/deconnexion">Logout</a></li>
                </ul>
            </div>   
        </header>
        <section id ="forminfoste"> 
          <center>
            <form id = "formste" method="post" action="XXX"></form>
              <fieldset>
                <legend>Bienvenue sur votre espace membre société !</legend>
        </section> 
        <footer>          
        </footer>   
    </body>
</html>