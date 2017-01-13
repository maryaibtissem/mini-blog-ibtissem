<!DOCTYPE html>
<html>
   
    <head>
         <meta charset="utf-8"> 
        <link rel="stylesheet" href="s.css">
    </head>
    <body>
<header>
    
</header>    
<div id="centre" >  
    
    <form method="post" >
        <h2>Inscrivez vous par ici </h2>
          
        <label >pseudo</label><input type="text" name="pseudo"><br><br><br>
        <label >mot de passe </label><input type="password" name="mdp" > <br><br>
        <label for="pseudo">&nbsp; </label><button id="boutton" name="envoyer">Envoyer</button><br>
        <a href=" acceuil.php">Retour a la page d'accueil</a
    </form>  

   
        
        <?php    
        try
       {
            $connexion = new PDO("mysql:host=localhost;dbname=menai", 'root', '');
            $connexion->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION); 
       }
       
        catch(Exception $e) {
        echo "Error: " . $e->getMessage();  }
    
        if(isset($_POST['pseudo']))  htmlspecialchars ($pseudo= $_POST["pseudo"]); 
        else $pseudo="";
        
        if(isset($_POST['mdp']))  htmlspecialchars ($mdp=$_POST["mdp"]);
        else $mdp="";                                    
                                      
       
        if (isset($_POST['envoyer']))
        {
        if( !empty($pseudo) && !empty($mdp) ) 
        {
            
            $req8 = $connexion->prepare("SELECT * FROM auteur WHERE pseudo = ?");
            $req8->execute(array($_POST['pseudo']));  
           
        if( $req8->rowCount() <= 0)
            
    
        {
            $req2 = $connexion->prepare('INSERT INTO auteur ( pseudo,mdp) VALUES( ?,?)');
            $req2->execute(array($_POST['pseudo'],$_POST['mdp'])); 
            echo "Merci pour votre inscription " ;
//            header("location:acceuil.php");
            
        }else echo"pseudo existe déja!";
            
        }
        else echo"IL faut remplir les champs";
        }
    
    
       
       
        ?>    
         
</div>
    </body>
    

	
</html>