
<?php include "header.php"; ?>
<form action="" method="POST">
<br>saisir votre prenom :<br/>
<input type="varchar" id="prenom" name="prenom" value="">
<br>saisir votre nom :<br/>
<input type="varchar" id="nom" name="nom" value="">
<br>saisir un mot de passe :<br/>
<input type="varchar" id="mdp" name="mdp" value="">
<input type="submit" name="submit" value="Enregistrer" />	
</form>
 
<?php


try{

	$bdd = new PDO('mysql:host=localhost;dbname=bibliotheque_script;charset=utf8', 'root','');
}
catch(Exception $e){

	
    die('Erreur : '.$e->getMessage());
}
	
	
$reponse = $bdd->prepare(
'INSERT INTO bibliotheque_script.utilisateur (id, prenom, nom, mdp)
VALUES (NULL, :prenom, :nom, :mdp;');

$reponse->execute(array(
'id'=>$_POST['id'],
'prenom'=>$_POST['prenom'],
'nom'=>$_POST['nom'],
'mdp'=>$_POST['mdp'],
));
var_dump($reponse);
echo 'Votre compte à été correctement inséré.';
?>

 

