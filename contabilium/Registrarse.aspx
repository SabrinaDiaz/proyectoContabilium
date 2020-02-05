<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registrarse.aspx.cs" Inherits="contabilium.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="https://fonts.googleapis.com/css?family=Quicksand&display=swap" rel="stylesheet"/>
    <link rel="stylesheet" type="text/css" href="/StyleSheet1.css"/>

    <title>Formulario</title>
</head>
<body>
    <h1>Formulario</h1>
    <form class="form" id="form1" runat="server">
        <div class="form-div">
            <label>Nombre</label><br />
            <input type="text" name="nombre" placeholder="Nombre" id="campoNombre" runat="server"/>
        </div>

        <div class="form-div">
            <label>Apellido</label><br />
            <input type="text" name="apellido" placeholder="Apellido" id="campoApellido" runat="server" />
        </div>

        <div class="form-div">
            <label>Email</label><br />
            <input type="email" name="email" placeholder="Email" id="campoEmail" runat="server" />
        </div>

        <div class="form-div">
            <label>Contraseña</label><br />
            <input type="password" name="password" id="campoPassword" placeholder="Contraseña" runat="server" />
        </div>
        <br />

        <asp:Button Text="Registrarse" runat="server" OnClick="GuardarDatos" /><br />
       
        <asp:Button Text="Restablecer" runat="server" OnClick="RestablecerDatos"/><br />
    </form>
</body>
</html>
