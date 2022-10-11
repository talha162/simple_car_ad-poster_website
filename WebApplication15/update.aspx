<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="update.aspx.cs" Inherits="WebApplication15.update" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="container">
        <div class="row">
            <div class="col-3"></div>
            <div class="col-6">
                <h1>Enter which ad you want to update</h1><br />
<asp:Label ID="Label11" runat="server" Text="Enter Car Name" CssClass="form-label"></asp:Label>
                <asp:TextBox ID="TextBox9" runat="server" placeholder="Enter Car name" CssClass="form-control"></asp:TextBox>

<asp:Label ID="Label12" runat="server" Text="Enter Car Model" CssClass="form-label"></asp:Label>
                <asp:TextBox ID="TextBox10" runat="server" placeholder="Enter Car Model" CssClass="form-control"></asp:TextBox>

                <asp:Label ID="Label9" runat="server" Text="Enter city" CssClass="form-label"></asp:Label>
                <asp:TextBox ID="TextBox7" runat="server" placeholder="Enter city" CssClass="form-control"></asp:TextBox>

<asp:Label ID="Label10" runat="server" Text="Enter Price" CssClass="form-label"></asp:Label>
                <asp:TextBox ID="TextBox8" runat="server" placeholder="Enter Price" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="col-3"></div>
            </div>
         </div>

    <div class="container">
        <div class="row">
            <div class="col-3"></div>
            <div class="col-6">
<br />
                <h1>Enter update data here</h1>"<br />
<asp:Label ID="Label1" runat="server" Text="Enter Car Name" CssClass="form-label"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter Car name" CssClass="form-control"></asp:TextBox>

<asp:Label ID="Label2" runat="server" Text="Enter Car Model" CssClass="form-label"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" placeholder="Enter Car Model" CssClass="form-control"></asp:TextBox>

<asp:Label ID="Label3" runat="server" Text="Exterior Color" CssClass="form-label"></asp:Label>
                <asp:TextBox ID="TextBox3" runat="server" placeholder="Exterior Color" CssClass="form-control"></asp:TextBox>

<asp:Label ID="Label4" runat="server" Text="Enter Milleage" CssClass="form-label"></asp:Label>
                <asp:TextBox ID="TextBox4" runat="server" placeholder="Enter Milleage" CssClass="form-control"></asp:TextBox>
               
               
                <asp:Label ID="Label6" runat="server" Text="please Upload image"  CssClass="form-label"></asp:Label>
    <asp:FileUpload ID="FileUpload1" runat="server"  CssClass="form-control" />
                <asp:Label ID="Label7" runat="server" Text="select Registered/Not registered"  CssClass="form-label" ></asp:Label>      
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
                    <asp:ListItem Text="not registered" Value="0"></asp:ListItem>
                    <asp:ListItem Text="Punjab" Value="1"></asp:ListItem>
                    <asp:ListItem Text="sindh" Value="2"></asp:ListItem>
                    <asp:ListItem Text="kpk" Value="3"></asp:ListItem>
                    <asp:ListItem Text="balochistan" Value="4"></asp:ListItem>
                </asp:DropDownList>
<asp:Label ID="Label8" runat="server" Text="Enter city" CssClass="form-label"></asp:Label>
                <asp:TextBox ID="TextBox6" runat="server" placeholder="Enter city" CssClass="form-control"></asp:TextBox>

<asp:Label ID="Label5" runat="server" Text="Enter Price" CssClass="form-label"></asp:Label>
                <asp:TextBox ID="TextBox5" runat="server" placeholder="Enter Price" CssClass="form-control"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="update Ad" OnClientClick="return checks();" class="btn btn-primary mt-3"  OnClick="Button1_Click"  />
</div>
            <div class="col-3"></div>
</div>
         </div>
    <script>
        function checks() {
            if (document.getElementById("<%=TextBox1.ClientID%>").value == ""
                || document.getElementById("<%=TextBox2.ClientID%>").value == ""
                || document.getElementById("<%=TextBox3.ClientID%>").value == ""
                || document.getElementById("<%=TextBox4.ClientID%>").value == ""
                || document.getElementById("<%=TextBox5.ClientID%>").value == ""
                || document.getElementById("<%=TextBox6.ClientID%>").value == ""
                || document.getElementById("<%=DropDownList1.ClientID%>").value == ""
                || document.getElementById("<%=TextBox7.ClientID%>").value == ""
                || document.getElementById("<%=TextBox8.ClientID%>").value == ""
                || document.getElementById("<%=TextBox9.ClientID%>").value == ""
                || document.getElementById("<%=TextBox10.ClientID%>").value == ""
            ) {
                alert("please enter something in textboxes");
                return false;
            }
        }
    </script>
</asp:Content>
