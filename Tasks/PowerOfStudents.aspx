<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PowerOfStudents.aspx.cs" Inherits="Tasks.PowerOfStudents" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Power of Students</title>
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
                <h1 class="text-center mb-4">Power of Students</h1>

                <!-- Row with 5 Cards that span full width -->
                <div class="row no-gutters">
                    <div class="col-2 mb-4">
                        <div class="card">
                            <img src="https://via.placeholder.com/150" class="card-img-top" alt="Card image">
                            <div class="card-body">
                                <h5 class="card-title">Borrow a Book</h5>
                                <p class="card-text">Description of student 1.</p>
                                <button class="btn btn-primary">Borrow a Book</button>
                            </div>
                        </div>
                    </div>
                    <div class="col-2 mb-4">
                        <div class="card">
                            <img src="https://via.placeholder.com/150" class="card-img-top" alt="Card image">
                            <div class="card-body">
                                <h5 class="card-title">see all books</h5>
                                <p class="card-text">Description of student 2.</p>
                                <asp:Button ID="btnAll" runat="server" OnClick="btnAll_Click" Text="see all books" />
                            </div>
                        </div>
                    </div>
                    <div class="col-2 mb-4">
                        <div class="card">
                            <img src="https://via.placeholder.com/150" class="card-img-top" alt="Card image">
                            <div class="card-body">
                                <h5 class="card-title">Feedback System</h5>
                                <p class="card-text">Description of student 3.</p>
                                <button class="btn btn-primary">Feedback System</button>
                            </div>
                        </div>
                    </div>
                    <div class="col-2 mb-4">
                        <div class="card">
                            <img src="https://via.placeholder.com/150" class="card-img-top" alt="Card image">
                            <div class="card-body">
                                <h5 class="card-title">Reserve a meeting room</h5>
                                <p class="card-text">Description of student 4.</p>
                                <button class="btn btn-primary">Reserve a meeting room</button>
                            </div>
                        </div>
                    </div>
                    <div class="col-2 mb-4">
                        <div class="card">
                            <img src="https://via.placeholder.com/150" class="card-img-top" alt="Card image">
                            <div class="card-body">
                                <h5 class="card-title">See a meeting room</h5>
                                <p class="card-text">Description of student 5.</p>
                                <asp:Button ID="btnMeet" runat="server" OnClick="btnMeet_Click" Text="See a meeting room"/>
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
