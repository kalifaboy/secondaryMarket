<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta charset="utf-8" />
        <title>Données Société</title>
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
    </style>
    </head>
    <body>
       <header>
            <p id="AM"> AssetMarket </p>
            <div id="menu">
                <ul id="menu-deroulant">
                    <li><a href="connected?page=2">Infos Société </a></li>
                    <li><a href="connected?page=3">Nouvelle Offre </a></li>
                     <li><a href="/marcheSecondaire/deconnexion">Logout</a></li>
                </ul>
            </div>   
        </header>
        <section id ="forminfoste"> 
            <form id = "formste" method="post" action="XXX">
              <fieldset>
                <legend>Données Société</legend>
                <p>Dites-nous plus sur votre société.</p>
                <label for="nomste">Nom de la Société <span class="requis">*</span></label>
                <input type="text" id="nomste" name="nomste" value="" size="34" maxlength="60" />
                <br />
                <label for="secteur">Secteur d'activité <span class="requis">*</span></label>
                <select id="secteur" name="secteur">Secteur d'activité<span class="requis">*</span>
                  <OPTION> Agriculture </OPTION>
                  <OPTION> Assurances </OPTION>
                  <OPTION> Banques </OPTION> 
                  <OPTION> Bien de consommation </OPTION>
                  <OPTION> Hôtellerie </OPTION>
                  <OPTION> Industrie </OPTION>
                  <OPTION> Technologies et services de l'information </OPTION>
                </select>
                <br />
                <label for="capital">Capitalisation boursière<span class="requis">*</span></label>
                <input type="text" id="capital" name="capital" value="" size="34" maxlength="60" />
                <br /> 
                <label for="des">Description</label>
                <textarea id="des" name="des" value="" rows=6 cols=38> </textarea>
                <br />
                <input type="submit" value="Valider" class="sansLabel" />
                <br />
              </fieldset>
            </form>
        </section> 
        <footer>          
        </footer>   
    </body>
</html>