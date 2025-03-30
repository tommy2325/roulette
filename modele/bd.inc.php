<?php

function connexionPDO() {
    $login = "root"; // Vérifie si "root" est bien l'utilisateur correct
    $mdp = ""; // Sur XAMPP et WAMP, le mot de passe est souvent vide
    $bd = "bdd_roulette"; // Vérifie que cette base existe bien
    $serveur = "127.0.0.1"; // Essaie 127.0.0.1 au lieu de localhost

    try {
        $conn = new PDO("mysql:host=$serveur;dbname=$bd;charset=UTF8", $login, $mdp); 
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        return $conn;
    } catch (PDOException $e) {
        die("Erreur de connexion PDO : " . $e->getMessage());
    }
}

// Test de connexion
if ($_SERVER["SCRIPT_FILENAME"] == __FILE__) {
    header('Content-Type:text/plain');
    echo "connexionPDO() : \n";
    print_r(connexionPDO());
}
?>
