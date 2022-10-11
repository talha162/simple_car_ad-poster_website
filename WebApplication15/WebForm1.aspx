<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication15.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-12 bg-dark h-60">
                <div class="container py-5 text-light">
                    <div class="row">
                        <div class="col-md-3"></div>
                        <div class="col-md-6">
                             <h2>Find Used Cars in Pakistan</h2>
                <h3>With thousands of cars, we have just the right one for you</h3><br />
                <asp:TextBox ID="TextBox1" runat="server" placeholder="Car name" CssClass="form-control"></asp:TextBox><br />
                 <asp:TextBox ID="TextBox2" runat="server"  placeholder="Enter City" CssClass="form-control"></asp:TextBox><br />
                            <h5>Enter Price Range</h5>
                            <asp:TextBox ID="TextBox4" runat="server" placeholder="Min" CssClass="" ></asp:TextBox>
                            <asp:TextBox ID="TextBox3" runat="server"  placeholder="Max" CssClass="" ></asp:TextBox> 
                            <br />
                            <asp:Button ID="Button1" runat="server" Text="Search" OnClientClick="return checks();" CssClass="btn btn-warning mt-3" OnClick="Button1_Click"/>
                        </div>
                        <div class="col-md-3"></div>
                    </div>
               
            </div>
            </div>
        </div>
    </div>
    <script>
        function checks() {
            var carname = document.getElementById("<%=TextBox1.ClientID%>");
            var city = document.getElementById("<%=TextBox2.ClientID%>");
            var max = document.getElementById("<%=TextBox4.ClientID%>");
            var min = document.getElementById("<%=TextBox3.ClientID%>");
            if (carname.value == "" || city.value == "" || max.value == "" || min.value == "") {
                alert("Please fill the text boxes");
                return false;
            }
        }
    </script>
</asp:Content>
