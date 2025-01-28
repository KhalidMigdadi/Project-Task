<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LibraryOwner.aspx.cs" Inherits="Tasks.LibraryOwner" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Owner Library</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">


    <style>
        /* Remove any padding or margin from the body and container */
        body, .container-fluid {
            padding: 0;
            margin: 0;
        }

        .card {
            width: 100% !important;
            height: 100%;
            margin-left: 100px;
        }

        
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>


            <div class="container-fluid my-5">
                <!-- Heading -->
                <h1 class="text-center mb-4">Power of Library Owner</h1>

                <!-- Row with 5 Cards that span full width -->
                <div class="row no-gutters container">
                    <div class="col-2 mb-4">
                        <div class="card">
                            <img src="https://via.placeholder.com/150" class="card-img-top" alt="Card image">
                            <div class="card-body">
                                <h5 class="card-title">Add Book</h5>
                                <p class="card-text">Description of student 1.</p>
                                <asp:Button ID="add" runat="server" Text="Add Book" OnClick="add_Click"/>
                            </div>
                        </div>
                    </div>
                    <div class="col-2 mb-4">
                        <div class="card">
                            <img src="https://via.placeholder.com/150" class="card-img-top" alt="Card image">
                            <div class="card-body">
                                <h5 class="card-title">Delete Book</h5>
                                <p class="card-text">Description of student 2.</p>
                                <asp:Button ID="btnAll" runat="server" Text="Delete Book" />
                            </div>
                        </div>
                    </div>
                    <div class="col-2 mb-4">
                        <div class="card">
                            <img src="https://via.placeholder.com/150" class="card-img-top" alt="Card image">
                            <div class="card-body">
                                <h5 class="card-title">Borrwoing Books</h5>
                                <p class="card-text">Description of student 3.</p>
                                <button class="btn btn-primary">Feedback Book</button>
                            </div>
                        </div>
                    </div>
                    <div class="col-2 mb-4">
                        <div class="card">
                            <img src="https://via.placeholder.com/150" class="card-img-top" alt="Card image">
                            <div class="card-body">
                                <h5 class="card-title">Show Books</h5>
                                <p class="card-text">Description of student 4.</p>
                                <button class="btn btn-primary">Show Books</button>
                            </div>
                        </div>
                    </div>
                    <div class="col-2 mb-4">
                        <div class="card">
                            <img src="https://via.placeholder.com/150" class="card-img-top" alt="Card image">
                            <div class="card-body">
                                <h5 class="card-title">Update Book information</h5>
                                <p class="card-text">Description of student 5.</p>
                                <asp:Button ID="btnMeet" runat="server" Text="Show Books" />
                            </div>
                        </div>
                    </div>

                    <div class="col-2 mb-4">
                        <div class="card">
                            <img src="https://via.placeholder.com/150" class="card-img-top" alt="Card image">
                            <div class="card-body">
                                <h5 class="card-title">Set Borrowing Rules</h5>
                                <p class="card-text">Description of student 5.</p>
                                <asp:Button ID="Button1" runat="server" Text="Show Books" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
