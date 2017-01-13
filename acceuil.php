<?php session_start(); ?>
<!DOCTYPE html>

<html>
   
    <head>
         <meta charset="utf-8"> 
        <link rel="stylesheet" href="acceuil.css">
        <link href='//fonts.googleapis.com/css?family=Gloria Hallelujah' rel='stylesheet'>
    </head>

	<body>
    <header> </header>    
   
    <div id="maman">
      
          
        <div id="bebe">      
            <div id="centre" >  
                <h2> Identifiez vous </h2>  
        
        
                <form method="post" action="" >
                
                <label class="form-id">pseudo</label><input type="text" name="pseudo"><br><br><br>
                <label class="form-id">mot de passe </label><input type="password" name="mdp" > <br><br>
      
                <label class="form-id" for="pseudo">&nbsp; </label><button name="envoyer" class="boutton" >Envoyer</button><br><br>
                <a href=" inscription.php">ou inscrivez vous par ici </a> 
         
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
            $req = $connexion->prepare("SELECT pseudo FROM auteur WHERE pseudo = ?");
            $req->execute(array($_POST['pseudo']));
              
            if( $req->rowCount() <= 0)
            { 
                
                echo "inscrivez vous d'abord";   
                
            } 
            else {
                
                $req3 = $connexion->prepare ("SELECT mdp FROM auteur WHERE pseudo = ?");
                $req3->execute(array($_POST['pseudo']));
              
                $row = $req3->fetch() ; 
              
                if($row["mdp"] == $_POST['mdp'])  
              
                {
                    
                    $_SESSION['connecter']=true; 
                    $_SESSION['pseudo']= $pseudo;
                
                    header("location:blog.php");
                    
             
                }
                
                
                else echo "mot de passe incorrect"; 
                }
              
     
          } else echo "remplir les champs";
         
    }?></div>   
         
     <div id="afficher" >  
                <form method="post" >
                <label> Sélectionne une catégorie</label>  
                    
                <select name="cat" >
               
                <option value="cuisine"> cuisine</option>
                <option value="mode"> mode</option>
                <option value="astuce_beaute"> astuce beauté</option>
                </select> <br> <br>  
        
    
                <label for="pseudo">&nbsp; </label><button class="boutton" name="afficher">Afficher</button>

                </form>  
            </div>    
        
        
   </div> 
        
        
  <?php
    if(isset($_POST['cat']))  htmlspecialchars ($cat=$_POST["cat"]);
    else $cat="";       
        
    if (isset($_POST['afficher']))
    
    {
      if (!empty($cat))
      { 
      
            $req8 = $connexion->prepare("SELECT id_cat FROM categorie WHERE nom_cat = ?");
            $req8->execute(array($_POST['cat']));  
            
            $row8 = $req8->fetch() ; 
//             echo  $row["id_cat"];
//       
//             $req2->execute(array($row["id_cat"]));  
//             $row2 = $req2->fetchAll(PDO::FETCH_ASSOC);
             //print_r($row2);
             
             
             $req9 = $connexion->prepare ("SELECT nom_article FROM article WHERE id_article IN ( SELECT id_article FROM join_articles_categories WHERE id_cat = ?  )" );
          
             $req9->execute(array($row8 ['id_cat']));   
             
            
            ?>

             <div id="rose"> <h2>LES DERNIERS ARTICLES PUBLIES</h2> <br> 
                 
            <?php
            while($row9 = $req9->fetch()) 
           {
            ?> <div class="article"> <?php  echo $row9["nom_article"]."<br>","<br>"; 
            ?></div>
              
            <?php
       
           }   ?> 
         
            </div>  
        
        <?php
       }
    }
        else 
        {
        ?>
         
     
          <div id="rose">  <h2>LES DERNIERS ARTICLES PUBLIES</h2> <br> 
          <?php
       
          $req4 = $connexion->query('SELECT nom_article FROM article ORDER BY id_article DESC LIMIT 0, 10');   
              
            
           while($row4 = $req4->fetch()) 
           {
            ?> <div class="article"> <?php  echo $row4["nom_article"]."<br>","<br>"; ?></div>
              
            <?php
           }
     
        }
            
            ?> 
            
          </div>
              
   </div>
    </body>
</html>          
  
      
        
                      
        
        
        
         
       
       
             
         
       
    
        
    
        
     
        
        
        
        
        
