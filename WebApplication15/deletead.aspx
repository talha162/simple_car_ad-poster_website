<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="deletead.aspx.cs" Inherits="WebApplication15.deletead" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
     <div class="container">
        <div class="row">
            <div class="col-3"></div>
            <div class="col-6">
                <h1>Enter which ad you want to delete</h1><br />
<asp:Label ID="Label11" runat="server" Text="Enter Car Name" CssClass="form-label"></asp:Label>
                <asp:TextBox ID="TextBox9" runat="server" placeholder="Enter Car name" CssClass="form-control"></asp:TextBox>

<asp:Label ID="Label12" runat="server" Text="Enter Car Model" CssClass="form-label"></asp:Label>
                <asp:TextBox ID="TextBox10" runat="server" placeholder="Enter Car Model" CssClass="form-control"></asp:TextBox>

                <asp:Label ID="Label9" runat="server" Text="Enter city" CssClass="form-label"></asp:Label>
                <asp:TextBox ID="TextBox7" runat="server" placeholder="Enter city" CssClass="form-control"></asp:TextBox>

<asp:Label ID="Label10" runat="server" Text="Enter Price" CssClass="form-label"></asp:Label>
                <asp:TextBox ID="TextBox8" runat="server" placeholder="Enter Price" CssClass="form-control"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Text="delete ad" OnClick="Button1_Click" />
                </div>
            <div class="col-3"></div>
            </div>
         </div>
 
</asp:Content>
