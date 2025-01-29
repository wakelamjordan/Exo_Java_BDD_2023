<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>les conditions</title>
</head>
<body bgcolor=white>
<h1>Exercices sur les conditions</h1>
<form action="#" method="post">
    <p>Saisir la valeur 1 : <input type="text" id="inputValeur" name="valeur1">
    <p>Saisir la valeur 2 : <input type="text" id="inputValeur" name="valeur2">
    <p><input type="submit" value="Afficher">
</form>
<%-- Récupération des valeurs --%>
    <% String valeur1 = request.getParameter("valeur1"); %>
    <% String valeur2 = request.getParameter("valeur2"); %>

    <%-- Vérification de la condition entre les deux valeurs --%>
    <% if (valeur1 != null && valeur2 != null) { %>
        <%-- Conversion des valeurs en entiers pour la comparaison --%>
        <% int intValeur1 = Integer.parseInt(valeur1); %>
        <% int intValeur2 = Integer.parseInt(valeur2); %>
        
        <%-- Condition if pour comparer les valeurs --%>
        <% if (intValeur1 > intValeur2) { %>
            <p>Valeur 1 est supérieure à Valeur 2.</p>
        <% } else if (intValeur1 < intValeur2) { %>
            <p>Valeur 1 est inférieure à Valeur 2.</p>
        <% } else { %>
            <p>Valeur 1 est égale à Valeur 2.</p>
        <% } %>
        <% } %>
    
<h2>Exercice 1 : Comparaison 1</h2>
<form action="#" method="post">
    <p>Saisir la valeur A : <input type="text" id="exo1InputA" name="exo1InputA">
    <p>Saisir la valeur B : <input type="text" id="exo1InputB" name="exo1InputB">
    <p>Saisir la valeur C : <input type="text" id="exo1InputC" name="exo1InputC">
    <p><input type="submit" value="Afficher">
</form>
<p>
    <%-- Récupération des valeurs --%>
    <% String exo1InputA = request.getParameter("exo1InputA"); %>
    <% String exo1InputB = request.getParameter("exo1InputB"); %>
    <% String exo1InputC = request.getParameter("exo1InputC"); %>

    <%-- Vérification de la condition entre les trois valeurs --%>
    <% if (exo1InputA != null && exo1InputB != null && exo1InputC != null) { %>
        <%-- Conversion des valeurs en entiers pour la comparaison --%>
        <% int intExo1InputA = Integer.parseInt(exo1InputA); %>
        <% int intExo1InputB = Integer.parseInt(exo1InputB); %>
        <% int intExo1InputC = Integer.parseInt(exo1InputC); %>
        
        <%-- Condition if pour vérifier si C est compris entre A et B --%>
        <% if (intExo1InputC > intExo1InputA && intExo1InputC < intExo1InputB) { %>
            <p>Oui C est compris entre A et B</p>
        <% } else { %>
            <p>Non C n'est pas compris entre A et B</p>
        <% } %>
    <% } %>
</p>
<p>Ecrire un programme qui demande à l'utilisateur de saisir 3 valeurs (des chiffres),</br>
A, B et C et dites nous si la valeur de C est comprise entre A et B.</br>
Exemple :</br>
A = 10</br>
B = 20</br>
C = 15</br>
Oui C est compris entre A et B</p>

<h2>Exercice 2 : Pair ou Impair ?</h2>
<form action="#" method="post">
    <p>Saisir la valeur : <input type="text" id="exo2Input" name="exo2Input">
    <p><input type="submit" value="Afficher">
</form>
<p>
    <%-- Récupération de la valeur saisie par l'utilisateur --%>
    <% String exo2Input = request.getParameter("exo2Input"); %>

    <%-- Vérification de l'existence de la valeur --%>
    <% if (exo2Input != null && !exo2Input.isEmpty()) { %>
        <%-- Conversion de la valeur en entier pour la vérification --%>
        <% int intExo2Input = Integer.parseInt(exo2Input); %>
        
        <%-- Condition if pour vérifier si le nombre est pair ou impair --%>
        <% if (intExo2Input % 2 == 0) { %>
            <p>Le nombre est pair.</p>
        <% } else { %>
            <p>Le nombre est impair.</p>
        <% } %>
    <% } %>
</p>
<p>Écrivez un programme pour vérifier si un nombre est pair ou impair en utilisant une structure if</p>


<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
