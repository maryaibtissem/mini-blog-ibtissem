<?php session_start(); 

if(!isset($_SESSION['connecter']))
{
    die('vous ete deconnecter');
}


?>

<!DOCTYPE html>
<html>
   
    <head>
         <meta charset="utf-8"> 
        <link rel="stylesheet" href="style.css">
    </head>

	<body>
    <header> </header>    
   
     <div id="centre" >  
     <form method="post" action="" >
        
        <label >Article</label><textarea type="text" name="article" rows="20" cols="40"> </textarea><br>
      <label>Catégorie</label>    
         <select name="cat" >
            <option value=""> ....</option>
            <option value="cuisine"> cuisine</option>
            <option value="mode"> mode</option>
            <option value="astuce_beaute"> astuce beauté</option>
           
         </select> <br>
         <label for="pseudo">&nbsp; </label> <button id="deconnexion1" name="envoyer" >Publier </button>


         
            <button id ="deconnexion" name="deconnexion" > Deconnexion </button> 
         </form>  
         
   </div>
        
      
        
    <?php 
    
    if (isset ($_POST['deconnexion']) )
    {
        $_SESSION=array();
        session_destroy();   
        header("location:acceuil.php");
    }      
        
   
    try
       {
      $connexion = new PDO("mysql:host=localhost;dbname=menai", 'root', '');
           $connexion->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION); 
       }
       
      catch(Exception $e) 
      {
          
      echo "Error: " . $e->getMessage();  
      }
     
        
//        if(isset($_POST['auteur']))  htmlspecialchars ($auteur= $_POST["auteur"]); 
//         else $auteur="";
        
        if(isset($_POST['article']))  htmlspecialchars ($article=$_POST["article"]);
                                        
                                      
        else $article="";
        
         if(isset($_POST['cat']))  htmlspecialchars ($cat=$_POST["cat"]);
         else $cat="";
        
         
        if( !empty($article) && !empty($cat)  )
         {
         
             
           $req = $connexion->prepare("SELECT id_cat FROM categorie WHERE nom_cat = ?");
            $req->execute(array($_POST['cat']));  
            
         $row = $req->fetch() ;  
//             $row["id_cat"];
        
        $reqid= $connexion->prepare("SELECT id_auteur FROM auteur WHERE pseudo = ?");
            $reqid->execute(array($_SESSION['pseudo']));  
          
         $id = $reqid->fetch() ;   
        
          
             $req2 = $connexion->prepare('INSERT INTO article ( nom_article,id_auteur) VALUES( ?,?)');
             $req2->execute(array($_POST['article'],$id["id_auteur"])); 
           
            $id_data = $connexion->lastInsertId();
             
           
           $req3 = $connexion->prepare('INSERT INTO join_articles_categories ( id_article, id_cat) VALUES( ?,?)');
          $req3->execute(array($id_data, $row["id_cat"]));    
             
               $req4 = $connexion->query('SELECT nom_article FROM article ORDER BY id_article DESC LIMIT 0, 10');   
            
            
           
              ?> 
             
             
        <div id="rose"> 
   <?php
            
           while($row4 = $req4->fetch()) 
           {
            ?> <div class="article"> <?php echo  $row4["nom_article"]."<br>","<br> </div>";
           }
            
         }
        
         else 
        {
        ?>
           <div id="rose">  <h2>LES DERNIERS ARTICLES PUBLIES </h2> <br> 
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
        
    
       </body>

 </html>