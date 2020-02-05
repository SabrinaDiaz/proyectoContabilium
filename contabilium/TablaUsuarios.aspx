<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TablaUsuarios.aspx.cs" Inherits="contabilium.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="https://fonts.googleapis.com/css?family=Quicksand&display=swap" rel="stylesheet"/>
    <link rel="stylesheet" type="text/css" href="/StyleSheet1.css"/>
    <title>Tabla</title>
</head>
<body>
     <h1>Lista de Usuarios</h1>
    <form id="form1" runat="server">
        <div class="form-tabla">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:proyectoConnectionString %>" OnSelecting="Unnamed3_Selecting"
            SelectCommand="SELECT * FROM [Usuario]"
            deleteCommand="Delete FROM [Usuario] WHERE [IDUsuario] = @IDUsuario"
            UpdateCommand="UPDATE Usuario SET [Nombre]=@Nombre,[Apellido]=@Apellido,Email=@Email,[Password]=@Password WHERE [IDUsuario]=@IDUsuario"></asp:SqlDataSource>

            <asp:GridView ID="GridView1" runat="server" CssClass="mGrid" PagerStyle-CssClass="pgr"
            AutoGenerateColumns="False" DataKeyNames="IDUsuario" AlternatingRowStyle-CssClass="alt"
            DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowSelectButton="false" ShowCancelButton="true" ShowEditButton="true" ShowHeader="true" ShowDeleteButton="true" />
                <asp:BoundField DataField="IDUsuario" HeaderText="IDUsuario" InsertVisible="False" ReadOnly="True" SortExpression="IDUsuario" />
                <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                <asp:BoundField DataField="Apellido" HeaderText="Apellido" SortExpression="Apellido" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
            </Columns>
        </asp:GridView>
        <asp:Button Text="Cerrar Sesión" runat="server" OnClick="CerrarSesion"/><br />
            </div>
    </form>
</body>
</html>
