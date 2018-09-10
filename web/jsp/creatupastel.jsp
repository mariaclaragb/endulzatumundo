<%-- 
    Document   : creatupastel
    Created on : 10/09/2018, 08:36:47 AM
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

<head>
    <title>Endulza tu mundo</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="CSS/Form1.css">
    <link rel="stylesheet" href="CSS/menu.css">
    <link rel="stylesheet" href="CSS/animate.css">
    <link rel="shortcut icon" href="IMG/Favicon.png" type="image/x-icon">
</head>

<body>
         <br>
    <div class="menu">
        <a href="inicio.html" target="ventana">Inicio</a>
        <a href="iniciarsesion.html" target="ventana">Iniciar sesion</a>
        <a href="#" target="ventana">Crea tu pastel</a>
        <a href="productos.html" target="ventana">Productos</a>
        <a href="contactenos.html" target="ventana">Contactenos</a>
    </div>
</br>
    <!--Inicio de formularios -->
    <div class="contenedor-form">
        <h2 class="title animated rubberBand">Crea tu pastel</h2>
        <div class="formulario">
            <p class="animated bounceIn">Sabor del pastel</p>
            <input type="text" name="sabor" placeholder="Chocolate, fresa, mora, etc." />
            <p class="animated bounceIn">Cantidad de porciones</p>
            <input type="text" name="porciones" placeholder="5-10 o mas">
            <p class="animated bounceIn">Tipo de molde</p>
            <input type="text" name="molde" placeholder="Redondo o otro tipo" />
            <p class="animated bounceIn">Relleno</p>
            <select name="relleno" id="relleno">
                <option value="#">Seleccione</option>
                <option value="#">SI</option>
                <option value="#">No</option>
            </select>
            <p class="animated bounceIn">Que sabor de relleno</p>
            <input type="text" name="saborRelleno" placeholder="Fondant, Chantilly, etc." />
            <select name="tpTorta" id="tpTorta">
                <option value="#">Seleccione</option>
                <option value="#">Secas</option>
                <option value="#">Postre</option>
                <option value="#">Refrigerada</option>
            </select>
            <button type="button" class="animated zoomInRight">Crear</button>
        </div>
    </div>
</body>

</html>
