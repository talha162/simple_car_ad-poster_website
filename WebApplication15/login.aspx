<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebApplication15.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-3"></div>
            <div class="col-6">
 <asp:Label ID="Label1" runat="server" Text="Enter Email" CssClass="form-label"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" placeholder="Email" CssClass="form-control"></asp:TextBox>
     <asp:Label ID="Label2" runat="server" Text="Enter password" CssClass="form-label"></asp:Label>
                <input id="Password1" type="password"  runat="server" placeholder="password" class="form-control" />
             
                <asp:Button ID="Button1" runat="server" Text="login" OnClientClick="return checkLogin();" class="btn btn-primary mt-3" OnClick="Button1_Click" />
                
            </div>

            <div class="col-3"></div>
</div>
        </div>
    <script>
        function checkLogin() {
            var email = document.getElementById("<%=TextBox1.ClientID%>").value;
            var password = document.getElementById("<%=Password1.ClientID%>").value;
            if (email == "" || password == "") {
                alert("please enter email or password");
                return false;
            }
        }
    </script>
</asp:Content>
