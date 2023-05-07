<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registrar.aspx.cs" Inherits="DataNexo.Registrar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>DataNexo</title>

    <%--Links--%>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="Assets/style.css" rel="stylesheet" />

    <%--Scripts--%>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/jquery-1.9.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script src="https://kit.fontawesome.com/2237d5d0c6.js" crossorigin="anonymous"></script>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="container py-4">
                <div class="row">
                    <div class="col-md-12">
                        <div class="px-4 py-5 my-5 text-center">
                            <h1 class="display-5 fw-bold">DataNexo</h1>
                            <div class="col-lg-6 mx-auto">
                                <p class="lead mb-4">
                                    Bienvenido a DataNexo, su gestor de datos. Nuestro servicio ofrece una amplia gama de 
                                    herramientas para ayudarle a manejar sus datos de manera eficiente y efectiva.
                                </p>
                            </div>
                            <p>
                                <a class="btn btn-primary" href="Login.aspx" role="button">Entrar&nbsp<i class="fa-solid fa-door-open"></i></a>
                                <%--
                                    <button id="btnInsert" runat="server" onserverclick="btnInsert_OnClick" class="btn btn-primary">Registrar&nbsp&nbsp<i class="fa-solid fa-right-to-bracket"></i></button>
                                --%>
                            </p>
                        </div>
                    </div>
                    <div class="row align-items-md-stretch">
                        <div class="col-md-6">
                            <div class="h-100 p-5 text-bg-dark rounded-3 shadow-sm">
                                <h2>¿Qué es DataNexo?</h2>
                                <p>DataNexo es un gestor de datos que permite a los usuarios almacenar y gestionar sus datos de forma segura.</p>
                                <button class="btn btn-outline-light" type="button">Example button</button>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="h-100 p-5 bg-light border rounded-3 shadow-sm">
                                <h2>¿Cómo funciona?</h2>
                                <p>El usuario se registra en la aplicación y crea una cuenta. A partir de ahí, puede crear bases de datos y tablas para almacenar sus datos.</p>
                                <button class="btn btn-outline-secondary" type="button">Example button</button>
                            </div>
                        </div>
                    </div>
                    <div class="row align-items-md-stretch mb-2 mt-3">
                        <div class="col-md-12 mb-2 mt-3">
                            <div class="h-100 p-5 bg-light border rounded-3 text-center shadow-sm">
                                <asp:GridView
                                    ID="GridViewUsuarios" runat="server"
                                    CssClass="table table-sm table-hover gridview-without-borders"
                                    AllowPaging="true"
                                    PageSize="10"
                                    AutoGenerateColumns="false">

                                    <Columns>
                                        <asp:BoundField DataField="tNombreUsuario" HeaderText="Nombre" />
                                        <asp:BoundField DataField="tUsuario" HeaderText="Usuario" />
                                        <asp:BoundField DataField="tFechaHoraAlta" HeaderText="Fecha Alta" />
                                    </Columns>

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
        </div>
    </form>
</body>
</html>
