<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <html>

    <head>
        <title>Boucles</title>
    </head>

    <body bgcolor=white>
        <h1>Exercices sur les boucles</h1>
        <form action="#" method="post">
            <label for="inputValeur">Saisir le nombre d'étoiles : </label>
            <input type="text" id="inputValeur" name="valeur" required>
            <div>
                <label for="exercice">Exercice</label>
                <select name="exercice" id="exercice" required>
                    <option value="">Selectionnez l'exercice</option>
                    <option value="exo1">Exercice 1</option>
                    <option value="exo2">Exercice 2</option>
                    <option value="exo3">Exercice 3</option>
                    <option value="exo4">Exercice 4</option>
                    <option value="exo5">Exercice 5</option>
                    <option value="exo6">Exercice 6</option>
                    <option value="exo7">Exercice 7</option>
                </select>
            </div>
            <input type="submit" value="Afficher">
        </form>

        <% 
            String valeur = request.getParameter("valeur");
            String exercice = request.getParameter("exercice");
            if (valeur != null && !valeur.isEmpty()){
                int cpt = Integer.parseInt(valeur);
        %>
            <% switch(exercice){
                   case "exo1": %>
                    <% for (int i = 0 ; i < cpt ; i++){ %>
                        <% for (int j = 0 ; j < cpt ; j++){ %>*<% } %>
                        <br>
                    <% } %>
                    <h2>Exercice 1 : Le carré d'étoiles</h2>
                    <p>Ecrire le code afin de produire un carré d'étoile</p>
                    <p>Exemple si l'utilisateur saisie le valeur 5</p>
                    <p>*****</br>*****</br>*****</br>*****</br>*****</p>
                <% break; 
                   case "exo2": %>
                   <% for ( int i = 0; i < cpt; i++){ 
                    for( int j = 0; j< i+1; j++){ %>*<% }
                    %><br><%
                    } %>
                    <h2>Exercice 2 : Triangle rectangle gauche</h2>
                    <p>Ecrire le code afin de produire un triangle rectangle aligné
                        sur la gauche</p>
                    <p>Exemple si l'utilisateur saisie le valeur 5</p>
                    <p>*</br>**</br>***</br>****</br>*****</p>
                <% break; 
                   case "exo3": %>
                    <h2>Exercice 3 : Triangle rectangle inversé</h2>
                    <p>Ecrire le code afin de produire un triangle rectangle aligné
                        sur la gauche</p>
                    <p>Exemple si l'utilisateur saisie le valeur 5</p>
                    <p>*****</br>****</br>***</br>**</br>*</p>
                <% break; 
                   case "exo4": %>
                    <h2>Exercice 4 : Triangle rectangle 2</h2>
                    <p>Ecrire le code afin de produire un triangle rectangle aligné
                        sur la droite</p>
                    <p>Exemple si l'utilisateur saisie le valeur 5</p>
                    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*</br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**</br>&nbsp;&nbsp;&nbsp;&nbsp;***</br>&nbsp;&nbsp;****</br>*****
                    </p>
                <% break; 
                   case "exo5": %>
                    <h2>Exercice 5 : Triangle isocele</h2>
                    <p>Ecrire le code afin de produire un triangle rectangle aligné
                        sur la droite</p>
                    <p>Exemple si l'utilisateur saisie le valeur 5</p>
                    <p>&nbsp;&nbsp;&nbsp;&nbsp;*</br>&nbsp;&nbsp;&nbsp;**</br>&nbsp;&nbsp;***</br>&nbsp;****</br>*****
                    </p>
                <% break; 
                   case "exo6": %>
                    <h2>Exercice 6 : Le demi losange</h2>
                    <p>Ecrire le code afin de produire un losange</p>
                    <p>Exemple si l'utilisateur saisie le valeur 5</p>
                    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*</br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**</br>&nbsp;&nbsp;&nbsp;&nbsp;***</br>&nbsp;&nbsp;****</br>*****
                    </p>
                    <p>*****</br>&nbsp;&nbsp;****</br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**</br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**</br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*
                    </p>
                <% break; 
                   case "exo7": %>
                    <h2>Exercice 7 : La table de multiplication</h2>
                    <p>Ecrire le code afin de créser une table de multiplication</p>
                    <p>Exemple si l'utilisateur saisie le valeur 5</p>
                    <p>5 x 1 = 5</p>
                    <p>5 x 2 = 10</p>
                    <p>5 x 3 = 15</p>
                    <p>5 x 4 = 20</p>
                    <p>5 x 5 = 25</p>
                <% break; 
                   default:
                break;}%>
        <% 
            }
        %>


        
                                                







                



        <p><a href="index.html">Retour au sommaire</a></p>
    </body>

    </html>