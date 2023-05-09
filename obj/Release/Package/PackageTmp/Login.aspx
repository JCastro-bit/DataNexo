<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="DataNexo.Login" %>

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
                <div class="container col-xl-10 col-xxl-8 px-4 py-5">
                    <div class="row align-items-center g-lg-5 py-5">
                        <div class="col-lg-7 text-center text-lg-start">
                            <h1 class="display-4 fw-bold lh-1 mb-3">DataNexo, su gestor de datos. </h1>
                            <p class="col-lg-10 fs-4">
                                Nuestro servicio ofrece una amplia gama de 
                                herramientas para ayudarle a manejar sus datos de manera eficiente y efectiva. 
                            </p>
                        </div>
                        <div class="col-md-10 mx-auto col-lg-5">
                            <div class="p-4 p-md-5 border rounded-3 bg-light shadow-sm">
                                <div class="form-floating mb-3">
                                    <asp:TextBox ID="txtCorreo" CssClass="form-control" runat="server" placeholder="Correo"></asp:TextBox>
                                    <label for="floatingInput">Correo</label>
                                </div>
                                <div class="form-floating mb-3">
                                    <asp:TextBox ID="txtContrasena" Type="Password" CssClass="form-control" runat="server" placeholder="Contraseña"></asp:TextBox>
                                    <label for="floatingPassword">Contraseña</label>
                                </div>
                                <div class="checkbox mb-3">
                                    <label>
                                        <input type="checkbox" value="remember-me" />
                                        Recuérdame           
                                    </label>
                                </div>
                                <asp:Button ID="btnIngresar" OnClick="btnIngresar_OnClick" CssClass="w-100 btn btn-lg btn-primary" runat="server" Text="Entrar" />
                                <hr class="my-4" />
                                <asp:Label ID="lblMensaje" CssClass="text-muted" runat="server" Text="Label">Al hacer clic en Entrar, acepta los términos de uso.</asp:Label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>



