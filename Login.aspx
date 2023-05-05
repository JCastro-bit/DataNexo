<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="DataNexo.Login" %>

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
            <div class="container py-4 mt-5">
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
                            <form class="p-4 p-md-5 border rounded-3 bg-light">
                                <div class="form-floating mb-3">
                                    <input type="email" class="form-control" id="floatingInput" placeholder="name@example.com" />
                                    <label for="floatingInput">Email address</label>
                                </div>
                                <div class="form-floating mb-3">
                                    <input type="password" class="form-control" id="floatingPassword" placeholder="Password" />
                                    <label for="floatingPassword">Password</label>
                                </div>
                                <div class="checkbox mb-3">
                                    <label>
                                        <input type="checkbox" value="remember-me" />
                                        Recuérdame           
                                    </label>
                                </div>
                                <button class="w-100 btn btn-lg btn-primary" type="submit">Regístrate</button>
                                <hr class="my-4" />
                                <small class="text-muted">Al hacer clic en Registrarse, acepta los términos de uso.</small>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </form>
</body>
</html>



