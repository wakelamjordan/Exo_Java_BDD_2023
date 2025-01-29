<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <html>

    <head>
        <title>Boucles</title>
    </head>

    <body bgcolor=white>
        <h1>Exercices sur les boucles</h1>
        <form action="#" method="post">
            <label for="inputValeur">Saisir le nombre d'étoiles : </label>
            <input type="text" id="inputValeur" name="valeur">
            <input type="submit" value="Afficher">
        </form>

        <%-- Récupération de la valeur saisie par l'utilisateur --%>
            <% String valeur=request.getParameter("valeur"); %>

                <%-- Vérification de l'existence de la valeur --%>
                    <% if (valeur !=null && !valeur.isEmpty()) { %>

                        <%-- Boucle for pour afficher une ligne d'étoiles --%>
                            <%int cpt=Integer.parseInt(valeur); %>
                            <%  
                                String exo1="" ; 
                                for (int i=0; i<cpt; i++){
                                    for (int j=0; j<cpt; j++){
                                        exo1+="*";
                                    }
                                    exo1+="<br>";
                                }
                                
                            %>
                            <%  
                                String exo2="" ; 
                                for (int i=0; i<cpt; i++){
                                    for (int j=0; j<=i; j++){
                                        exo2+="*";
                                    }
                                    exo2+="<br>";
                                }
                                
                            %>
                            <%  
                                String exo3="" ; 
                                for (int i=0; i<cpt; i++){
                                    for (int j=i; j<cpt; j++){
                                        exo3+="*";
                                    }
                                    exo3+="<br>";
                                }
                                
                            %>
                            <%  
                                String exo4="" ; 
                                for (int i=0; i<cpt; i++){
                                    for (int j=i+1; j<cpt; j++){
                                        exo4+="&nbsp;&nbsp;";
                                    }
                                    for (int j=i; j>=0; j--){
                                        exo4+="*";
                                    }
                                    exo4+="<br>";
                                }
                                
                            %>
                            <%  
                                String exo5="" ; 
                                for (int i=0; i<cpt; i++){
                                    for (int j=i+1; j<cpt; j++){
                                        exo5+="&nbsp;";
                                    }
                                    for (int j=i; j>=0; j--){
                                        exo5+="*";
                                    }
                                    exo5+="<br>";
                                }
                            %>
                            <%  
                                String exo6="" ; 
                                for (int i=0; i<cpt; i++){
                                    for (int j=i+1; j<cpt; j++){
                                        exo6+="&nbsp;&nbsp;";
                                    }
                                    for (int j=i; j>=0; j--){
                                        exo6+="*";
                                    }
                                    exo6+="<br>";
                                }
                                exo6+="<br>";
                                for (int i=0; i<cpt; i++){
                                    for (int j=0; j<i; j++){
                                        exo6+="&nbsp;&nbsp;";
                                    }
                                    for (int j=i; j<cpt; j++){
                                        exo6+="*";
                                    }
                                    exo6+="<br>";
                                }
                            %>
                            <% 
                            String exo7="";
                                for(int i=0; i<cpt; i++){
                                    exo7+= cpt + " x " + (i+1) + " = " + cpt*(i+1);
                                    exo7+="<br><br>";
                                }
                            %>

                                <h2>Exercice 1 : Le carré d'étoiles</h2>
                                <p>Ecrire le code afin de produire un carré d'étoile</p>
                                <p>Exemple si l'utilisateur saisie le valeur 5</p>
                                <p>*****</br>*****</br>*****</br>*****</br>*****</p>
                                <p>
                                    <%= exo1 %>
                                </p>

                                <h2>Exercice 2 : Triangle rectangle gauche</h2>
                                <p>Ecrire le code afin de produire un triangle rectangle aligné sur la gauche</p>
                                <p>Exemple si l'utilisateur saisie le valeur 5</p>
                                <p>*</br>**</br>***</br>****</br>*****</p>
                                <p>
                                    <%= exo2 %>
                                </p>

                                <h2>Exercice 3 : Triangle rectangle inversé</h2>
                                <p>Ecrire le code afin de produire un triangle rectangle aligné sur la gauche</p>
                                <p>Exemple si l'utilisateur saisie le valeur 5</p>
                                <p>*****</br>****</br>***</br>**</br>*</p>
                                <p>
                                    <%= exo3 %>
                                </p>

                                <h2>Exercice 4 : Triangle rectangle 2</h2>
                                <p>Ecrire le code afin de produire un triangle rectangle aligné sur la droite</p>
                                <p>Exemple si l'utilisateur saisie le valeur 5</p>
                                <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*</br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**</br>&nbsp;&nbsp;&nbsp;&nbsp;***</br>&nbsp;&nbsp;****</br>*****
                                </p>
                                <p>
                                    <%= exo4 %>
                                </p>

                                <h2>Exercice 5 : Triangle isocele</h2>
                                <p>Ecrire le code afin de produire un triangle rectangle aligné sur la droite</p>
                                <p>Exemple si l'utilisateur saisie le valeur 5</p>
                                <p>&nbsp;&nbsp;&nbsp;&nbsp;*</br>&nbsp;&nbsp;&nbsp;**</br>&nbsp;&nbsp;***</br>&nbsp;****</br>*****
                                </p>
                                <p>
                                    <%= exo5 %>
                                </p>

                                <h2>Exercice 6 : Le demi losange</h2>
                                <p>Ecrire le code afin de produire un losange</p>
                                <p>Exemple si l'utilisateur saisie le valeur 5</p>
                                <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*</br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**</br>&nbsp;&nbsp;&nbsp;&nbsp;***</br>&nbsp;&nbsp;****</br>*****
                                </p>
                                <p>*****</br>&nbsp;&nbsp;****</br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**</br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**</br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*
                                </p>
                                <p>
                                    <%= exo6 %>
                                </p>

                                <h2>Exercice 7 : La table de multiplication</h2>
                                <p>Ecrire le code afin de créser une table de multiplication</p>
                                <p>Exemple si l'utilisateur saisie le valeur 5</p>
                                <p>5 x 1 = 5</p>
                                <p>5 x 2 = 10</p>
                                <p>5 x 3 = 15</p>
                                <p>5 x 4 = 20</p>
                                <p>5 x 5 = 25</p>
                                <p>
                                    <%= exo7 %>
                                </p>
                                <% } %>
                                    <p><a href="index.html">Retour au sommaire</a></p>
    </body>

    </html>