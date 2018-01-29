<!DOCTYPE html>
<html>

<head>
    <title>Hello PHP</title>

    <style>
        HeaderColor{
            color: crimson;
        }

        infoColor{
            font-size: 20px; 
            color: cornflowerblue
        }
    </style> 
</head>
    
<body>
    <?php
        echo "<h1><HeaderColor>Hello! This is Huseen<HeaderColor></h1>"; 
    ?>
    
    <div style="display: inline-block">
        <a  href="https://www.mahkareem.com"><button style="cursor: pointer" >My Webpage</button></a>
    </div>
    <div style="display: inline-block">
        <a  href="info.php"> <button style="cursor: pointer">My Info</button></a>
    </div>
    
    <br>
    <br>
    
    <img src="me.jpg" width="200px" height="200px" >

    <p>
        <?php
            echo "<infoColor>I love Frontend development and I hate backend !<infoColor>";
        ?>
    </p>

</body>


</html>


