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

    <%--Favicon--%>
    <link rel="apple-touch-icon" sizes="57x57" href="Assets/Favicon/apple-icon-57x57.png" />
    <link rel="apple-touch-icon" sizes="60x60" href="Assets/Favicon/apple-icon-60x60.png" />
    <link rel="apple-touch-icon" sizes="72x72" href="Assets/Favicon/apple-icon-72x72.png" />
    <link rel="apple-touch-icon" sizes="76x76" href="Assets/Favicon/apple-icon-76x76.png" />
    <link rel="apple-touch-icon" sizes="114x114" href="Assets/Favicon/apple-icon-114x114.png" />
    <link rel="apple-touch-icon" sizes="120x120" href="Assets/Favicon/apple-icon-120x120.png" />
    <link rel="apple-touch-icon" sizes="144x144" href="Assets/Favicon/apple-icon-144x144.png" />
    <link rel="apple-touch-icon" sizes="152x152" href="Assets/Favicon/apple-icon-152x152.png" />
    <link rel="apple-touch-icon" sizes="180x180" href="Assets/Favicon/apple-icon-180x180.png" />
    <link rel="icon" type="image/png" sizes="192x192" href="Assets/Favicon/android-icon-192x192.png" />
    <link rel="icon" type="image/png" sizes="32x32" href="Assets/Favicon/favicon-32x32.png" />
    <link rel="icon" type="image/png" sizes="96x96" href="Assets/Favicon/favicon-96x96.png" />
    <link rel="icon" type="image/png" sizes="16x16" href="Assets/Favicon/favicon-16x16.png" />
    <link rel="manifest" href="Assets/Favicon/manifest.json" />
    <meta name="msapplication-TileColor" content="#ffffff" />
    <meta name="msapplication-TileImage" content="Assets/Favicon/ms-icon-144x144.png" />
    <meta name="theme-color" content="#ffffff" />

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="container py-4">
                <header class="pb-3 mb-4 border-bottom">
                    <a href="Index.aspx" class="d-flex align-items-center text-dark text-decoration-none">
                        <span class="fs-4 logo">DataNexo</span>
                    </a>
                </header>
                <div class="row">
                    <div class="row align-items-md-stretch mb-2 mt-3">
                        <div class="row justify-content-center">
                            <div class="col-md-6">
                                <div class="card mt-5">
                                    <div class="card-header">
                                        <h3>Registro de usuario</h3>
                                    </div>
                                    <div class="card-body">
                                        <div class="mb-3">
                                            <asp:Label ID="lblNombreUsuario" AssociatedControlID="txtNombreUsuario" runat="server" CssClass="form-label">Nombre de usuario</asp:Label>
                                            <asp:TextBox ID="txtNombreUsuario" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div class="mb-3">
                                            <asp:Label ID="lblUsuario" AssociatedControlID="txtUsuario" runat="server" CssClass="form-label">Usuario</asp:Label>
                                            <asp:TextBox ID="txtUsuario" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div class="mb-3">
                                            <asp:Label ID="lblContrasena" AssociatedControlID="txtContrasena" runat="server" CssClass="form-label">Contraseña</asp:Label>
                                            <asp:TextBox ID="txtContrasena" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                                        </div>
                                        <asp:Button ID="btnRegistrar" runat="server" CssClass="btn btn-primary" OnClick="btnRegistrar_Click" Text="Registrar" />
                                        <asp:Label ID="lblMensaje" runat="server" CssClass="text-muted" Visible="false"></asp:Label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
