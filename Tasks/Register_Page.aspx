﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register_Page.aspx.cs" Inherits="Tasks.Register_Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>
    <!-- MDBootstrap CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.3.0/mdb.min.css">
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <section class="vh-100" style="background-color: #eee;">
                <div class="container h-100">
                    <div class="row d-flex justify-content-center align-items-center h-100">
                        <div class="col-lg-12 col-xl-11">
                            <div class="card text-black" style="border-radius: 25px;">
                                <div class="card-body p-md-5">
                                    <div class="row justify-content-center">
                                        <div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">

                                            <p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Sign up</p>

                                            <form class="mx-1 mx-md-4">

                                                <div class="d-flex flex-row align-items-center mb-4">
                                                    <i class="fas fa-user fa-lg me-3 fa-fw"></i>
                                                    <div data-mdb-input-init class="form-outline flex-fill mb-0">

                                                        <label class="form-label" for="form3Example1c">Your Name</label>
                                                        <br />
                                                        <asp:TextBox ID="username" runat="server"></asp:TextBox>
                                                    </div>
                                                </div>

                                                <div class="d-flex flex-row align-items-center mb-4">
                                                    <i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
                                                    <div data-mdb-input-init class="form-outline flex-fill mb-0">
                                                        <label class="form-label" for="form3Example3c">Your Email</label>
                                                        <br />

                                                        <asp:TextBox ID="email" runat="server"></asp:TextBox>
                                                    </div>
                                                </div>

                                                <div class="d-flex flex-row align-items-center mb-4">
                                                    <i class="fas fa-lock fa-lg me-3 fa-fw"></i>
                                                    <div data-mdb-input-init class="form-outline flex-fill mb-0">
                                                        <label class="form-label" for="form3Example4c">Password</label>
                                                        <br />

                                                        <asp:TextBox ID="pass" runat="server"></asp:TextBox>
                                                    </div>
                                                </div>

                                                <div class="d-flex flex-row align-items-center mb-4">
                                                    <i class="fas fa-key fa-lg me-3 fa-fw"></i>
                                                    <div data-mdb-input-init class="form-outline flex-fill mb-0">
                                                        <label class="form-label" for="form3Example4cd">Repeat your password</label>
                                                        <br />

                                                        <asp:TextBox ID="repass" runat="server"></asp:TextBox>
                                                    </div>
                                                </div>

                                                <div class="form-check d-flex justify-content-center mb-5">
                                                    <input class="form-check-input me-2" type="checkbox" value="" id="form2Example3c" />
                                                    <label class="form-check-label" for="form2Example3">
                                                        I agree all statements in <a href="#!">Terms of service</a>
                                                    </label>
                                                </div>

                                                <div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
                                                    <asp:Button ID="register" runat="server" Text="Register" OnClick="register_Click" />
                                                </div>
                                                <br />
                                                <br />
                                                <asp:Label ID="result" runat="server" Visible="false"></asp:Label>
                                            </form>

                                        </div>
                                        <div class="col-md-10 col-lg-6 col-xl-7 d-flex align-items-center order-1 order-lg-2">

                                            <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/draw1.webp"
                                                class="img-fluid" alt="Sample image">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </form>


    <!-- MDBootstrap JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.3.0/mdb.min.js"></script>
</body>
</html>
