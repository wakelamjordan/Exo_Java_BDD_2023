<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>Les tableaux</title>
</head>
<body bgcolor=white>
<h1>Exercices sur les tableaux</h1>
<form action="#" method="post">
    <p>Saisir au minimu 3 chiffres à la suite, exemple : 6 78 15 <input type="text" id="inputValeur" name="chaine">
    <p><input type="submit" value="Afficher">
</form>
<%-- Récupération des valeurs --%>
    <% String chaine = request.getParameter("chaine"); %>
    
    <% if (chaine != null) { %>


    <%-- Division de la chaîne de chiffres séparés par des espaces --%>
    <% String[] tableauDeChiffres = chaine.split("\\s+"); %>
    <p>La tableau contient <%= tableauDeChiffres.length %> valeurs</br>
    Chiffre 1 : <%= Integer.parseInt(tableauDeChiffres[0]) %></br>
    Chiffre 2 : <%= Integer.parseInt(tableauDeChiffres[1]) %></br>
    Chiffre 3 : <%= Integer.parseInt(tableauDeChiffres[2]) %></p>

    <% 
        int exo1 = Integer.parseInt(tableauDeChiffres[0]) * Integer.parseInt(tableauDeChiffres[0]);
    %>
    <% 
        int exo2 = Integer.parseInt(tableauDeChiffres[0]) + Integer.parseInt(tableauDeChiffres[1]);
    %>
    <% 
        int exo3 = Integer.parseInt(tableauDeChiffres[0]);
        for(int i = 1; i < tableauDeChiffres.length; i++){
            exo3 += Integer.parseInt(tableauDeChiffres[i]);
        }
    %>
    <% 
        int exo4 = Integer.parseInt(tableauDeChiffres[0]);
        for(int i = 1; i < tableauDeChiffres.length; i++){
            if(exo4 < Integer.parseInt(tableauDeChiffres[i])){
                exo4 = Integer.parseInt(tableauDeChiffres[i]);
            }
        }
    %>
    <% 
        int exo5 = Integer.parseInt(tableauDeChiffres[0]);
        for(int i = 1; i < tableauDeChiffres.length; i++){
            if(exo5 > Integer.parseInt(tableauDeChiffres[i])){
                exo5 = Integer.parseInt(tableauDeChiffres[i]);
            }
        }
    %>
    <% 
        int exo6 = Integer.parseInt(tableauDeChiffres[0]);

        int abs1 = 0;

        int abs = 0;

        for(int i = 1; i < tableauDeChiffres.length; i++){

            abs = Integer.parseInt(tableauDeChiffres[i])*Integer.parseInt(tableauDeChiffres[i]);

            if(abs < (exo6 * exo6)){
                exo6 = Integer.parseInt(tableauDeChiffres[i]);
            }
        }
    %>
    <% 
        int exo7 = Integer.parseInt(tableauDeChiffres[0]);


        for (int i = 1; i < tableauDeChiffres.length; i++) {
            abs = Integer.parseInt(tableauDeChiffres[i]) * Integer.parseInt(tableauDeChiffres[i]);

            if (abs < (exo7 * exo7)) {
                exo7 = Integer.parseInt(tableauDeChiffres[i]);
            } else if (abs == (exo7 * exo7)) {
                if (exo7 < 0) {
                    exo7 = Integer.parseInt(tableauDeChiffres[i]);
                }
            }
        }
    %>
    
<h2>Exercice 1 : La carré de la première valeur</h2>
<p>Ecrire un programme afin d'afficher le carré de la première valeur</p>
<p>
    <%= exo1 %>
</p>

<h2>Exercice 2 : La somme des 2 premières valeurs</h2>
<p>Ecrire un programme afin d'afficher la somme des deux premières valeurs</p>
<p>
    <%= exo2 %>
</p>

<h2>Exercice 3 : La somme de toutes les valeurs</h2>
<p>L'utilisateur peut à présent saisir autant de valeurs qu'il le souhaite dans champs de saisie.</br>
Ecrire un programme afin de faire la somme de toutes les valeurs saisie par l'utilisateur</p>
<p>
    <%= exo3 %>
</p>

<h2>Exercice 4 : La valeur maximum</h2>
<p>Ecrire un programme pour afficher la valeur maximale saisie par l'utilisateur</p>
<p>
    <%= exo4 %>
</p>

<h2>Exercice 5 : La valeur minimale</h2>
<p>Ecrire un programme pour afficher la valeur minimale saisie par l'utilisateur</p>
<p>
    <%= exo5 %>
</p>

<h2>Exercice 6 : La valeur le plus proche de 0</h2>
<p>Trouvez la valeur la plus proche de 0 (chiffres positifs ou négatifs)</p>
<p>
    <%= exo6 %>
</p>

<h2>Exercice 7 : La valeur le plus proche de 0 (2° version)</h2>
<p>Trouvez la valeur la plus proche de 0 (chiffres positifs ou négatifs)</p>
<p>En cas d'égalité entre un chiffre positif et négatif, affichez le chiffre positif</p>
<p>
    <%= exo7 %>
</p>

<% } %>
<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
