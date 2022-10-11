<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="WebApplication15.signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-3"></div>
            <div class="col-6">
                <asp:Label ID="Label1" runat="server" Text="Enter Name" CssClass="form-label"></asp:Label>
                 <asp:TextBox ID="TextBox1" runat="server" placeholder="Name" CssClass="form-control"></asp:TextBox>
   <asp:Label ID="Label2" runat="server" Text="Enter Email" CssClass="form-label"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" placeholder="Email" CssClass="form-control"></asp:TextBox>
    <asp:Label ID="Label3" runat="server" Text="Enter phone number" CssClass="form-label"></asp:Label>
                <asp:TextBox ID="TextBox3" runat="server" placeholder="phone" CssClass="form-control"></asp:TextBox>
    <asp:Label ID="Label4" runat="server" Text="Enter password" CssClass="form-label"></asp:Label>
               <input id="Password1" type="password"  runat="server" placeholder="password" class="form-control" />
                <asp:Label ID="Label5" runat="server" Text="Enter Confirm Password" CssClass="form-label"></asp:Label>
     <input id="Password2" type="password"  runat="server" placeholder="enter confirm password" class="form-control" />
                <asp:Button ID="Button1" runat="server" Text="Signup" OnClientClick="return check();" class="btn btn-primary mt-3" OnClick="Button1_Click" />
            </div>
            <div class="col-3"></div>
        </div>
    </div>
   <script>
       function check() {
           if (document.getElementById("<%=TextBox1.ClientID%>").value == ""
               || document.getElementById("<%=TextBox2.ClientID%>").value == ""
               || document.getElementById("<%=TextBox3.ClientID%>").value == ""
               || document.getElementById("<%=Password1.ClientID%>").value == ""
               || document.getElementById("<%=Password2.ClientID%>").value == ""
           ) {
               alert("please fill the text boxes");
               return false;
           }
       }
   </script>
</asp:Content>
