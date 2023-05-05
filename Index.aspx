<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="DataNexo.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>DataNexo</title>

    <%--Links--%>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/bootstrap-theme.min.css" rel="stylesheet" />
    <%--Scripts--%>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/jquery-1.9.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script src="https://kit.fontawesome.com/2237d5d0c6.js" crossorigin="anonymous"></script>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="jumbotron h-100 p-5 rounded-3 mb-2 mt-2">
                            <h1>DataNexo</h1>
                            <p>Bienvenido a DataNexo, su gestor de datos.</p>
                            <p>
                                <a class="btn btn-primary" href="Login.aspx" role="button">Entrar&nbsp<i class="fa-solid fa-door-open"></i></a>
                                <button id="btnInsert" runat="server" onserverclick="btnInsert_OnClick" class="btn btn-primary">Registrar&nbsp&nbsp<i class="fa-solid fa-arrow-up-from-bracket"></i></button>
                            </p>
                        </div>
                    </div>
                    <div class="col-md-12 mb-2">
                        <div class="jumbotron h-100 p-5 text-bg-dark rounded-3 ">
                            <h1>¿Qué es DataNexo?</h1>
                            <p>DataNexo es un gestor de datos que permite a los usuarios almacenar y gestionar sus datos de forma segura.</p>
                        </div>
                    </div>
                    <div class="col-md-12 mb-2">
                        <div class="jumbotron h-100 p-5 text-bg-dark rounded-3">
                            <h1>¿Cómo funciona?</h1>
                            <p>El usuario se registra en la aplicación y crea una cuenta. A partir de ahí, puede crear bases de datos y tablas para almacenar sus datos.</p>

                            <asp:GridView
                                ID="GridViewUsuarios" runat="server"
                                CssClass="table table-sm table-ordenes gridview-without-borders"
                                AllowPaging="true"
                                PageSize="10"
                                AutoGenerateColumns="true">

                                <HeaderStyle CssClass="gridview-header" />

                                <RowStyle
                                    BackColor="white"
                                    HorizontalAlign="Center" />

                                <AlternatingRowStyle
                                    BackColor="#ECECEC" />

                                <PagerSettings
                                    Mode="Numeric"
                                    Position="Bottom"
                                    PageButtonCount="5" />

                                <PagerStyle
                                    Height="40px"
                                    VerticalAlign="Bottom"
                                    HorizontalAlign="Center"
                                    CssClass="pager" />

                            </asp:GridView>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
