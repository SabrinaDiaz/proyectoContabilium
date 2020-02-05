<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="contabilium.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="https://fonts.googleapis.com/css?family=Quicksand&display=swap" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="/StyleSheet1.css" />
    <title></title>
</head>
<body>
    <h1>Login</h1>
    <form class="form" id="form1" runat="server">

        <div class="form-div">
            <label>Email</label><br />
            <input type="email" name="email" placeholder="Email" id="campoEmail" runat="server" />
        </div>

        <div class="form-div">
            <label>Contraseña</label><br />
            <input type="password" name="password" id="campoPassword" placeholder="Contraseña" runat="server" />
        </div>
        <br />
        <asp:Button Text="Inicio de sesión" runat="server" OnClick="IniciarSesion" /><br />
    </form>
</body>
</html>
