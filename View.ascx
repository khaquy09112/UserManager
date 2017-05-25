﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="View.ascx.cs" Inherits="Christoc.Modules.UserManager.View" %>
<style type="text/css">
    .auto-style1 {
        margin-left: 15px;
    }
    .auto-style2 {
        margin-left: 18px;
    }
</style>
<br />
<asp:Label ID="Label2" runat="server" Text="Name: "></asp:Label>
<asp:TextBox ID="txtName" runat="server" CssClass="auto-style1" Width="184px"></asp:TextBox>
<br />
<asp:Label ID="Label1" runat="server" Text="Address: "></asp:Label>
<asp:TextBox ID="txtAddress" runat="server" Width="184px"></asp:TextBox>
<br />
<asp:Label ID="Label3" runat="server" Text="Email: "></asp:Label>
<asp:TextBox ID="txtEmail" TextMode="Email" runat="server" CssClass="auto-style2" Width="182px"></asp:TextBox>
<br />
<asp:Button ID="btnAddUser" runat="server" OnClick="btnAddUser_Click" Text="Add User" />
<br />
<br />
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="UserId" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" ShowFooter="True">
    <Columns>
        <asp:BoundField DataField="UserId" HeaderText="UserId" InsertVisible="False" ReadOnly="True" SortExpression="UserId" />
        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
        <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
        <asp:BoundField DataField="ModuleId" HeaderText="ModuleId" SortExpression="ModuleId" />
        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
    </Columns>
    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#FFF1D4" />
    <SortedAscendingHeaderStyle BackColor="#B95C30" />
    <SortedDescendingCellStyle BackColor="#F1E5CE" />
    <SortedDescendingHeaderStyle BackColor="#93451F" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dnn7ConnectionString %>" SelectCommand="SELECT * FROM [UserManager]" UpdateCommand="UPDATE [UserManager] Set [Name]=@Name, [Address]=@Address,[ModuleId]=@ModuleId,[Email]=@Email WHERE [UserId]=@UserId" DeleteCommand="DELETE FROM [UserManager] WHERE [UserId]=@UserId" ></asp:SqlDataSource>
<br />
<p>
    &nbsp;</p>
