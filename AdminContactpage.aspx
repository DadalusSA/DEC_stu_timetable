<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminContactpage.aspx.cs" Inherits="AdminContactpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <a href="AdminPage1.aspx" style="padding-right:20px;padding-top:3px; text-decoration:none; color: blue;float:right;"> Back to subject register
    </a>
        <br />
        <br />
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" DataKeyNames="CampusName" OnRowDataBound="OnRowDataBound" OnRowEditing="OnRowEditing" OnRowCancelingEdit="OnRowCancelingEdit"
OnRowUpdating="OnRowUpdating" OnRowDeleting="OnRowDeleting" EmptyDataText="No records has been added.">

            <Columns>
    <asp:TemplateField HeaderText="Name" ItemStyle-Width="150">
        <ItemTemplate>
             <br /> <br />
           <asp:Label ID="lblcampusname" runat="server" Text='<%# Eval("CampusName") %>'></asp:Label>
        </ItemTemplate>

<ItemStyle Width="150px"></ItemStyle>
    </asp:TemplateField>
    <asp:TemplateField HeaderText="AddressLine1" ItemStyle-Width="150">
        <ItemTemplate>
            <asp:Label ID="lblAddress1" runat="server" Text='<%# Eval("AddressLine1") %>'></asp:Label>           
        </ItemTemplate>
        <EditItemTemplate>
            <asp:textbox ID="txtAddress1" runat="server" Text='<%# Eval("AddressLine1") %>'></asp:textbox>
        </EditItemTemplate>

<ItemStyle Width="150px"></ItemStyle>
    </asp:TemplateField>
    <asp:TemplateField HeaderText="AddressLine2" ItemStyle-Width="150">
        <ItemTemplate>
            <asp:label ID="lblAddress2" runat="server" Text='<%# Eval("AddressLine2") %>'></asp:label>
        </ItemTemplate>
        <EditItemTemplate>
            <asp:TextBox ID="txtAddress2" runat="server" Text='<%# Eval("AddressLine2") %>'></asp:TextBox>
        </EditItemTemplate>

<ItemStyle Width="150px"></ItemStyle>
    </asp:TemplateField>

                <asp:TemplateField HeaderText="AddressLine3" ItemStyle-Width="150">
        <ItemTemplate>
            <asp:label ID="lblAddress3" runat="server" Text='<%# Eval("AddressLine3") %>'></asp:label>
        </ItemTemplate>
        <EditItemTemplate>
            <asp:TextBox ID="txtAddress3" runat="server" Text='<%# Eval("AddressLine3") %>'></asp:TextBox>
        </EditItemTemplate>

<ItemStyle Width="150px "></ItemStyle>
    </asp:TemplateField>

                <asp:TemplateField HeaderText="Tel" ItemStyle-Width="150">
        <ItemTemplate>
            <asp:label ID="lbltel" runat="server" Text='<%# Eval("Tel") %>'></asp:label>
        </ItemTemplate>
        <EditItemTemplate>
            <asp:TextBox ID="txttel" Style="margin-top:54px;" runat="server" Text='<%# Eval("Tel") %>'></asp:TextBox>
            <asp:RegularExpressionValidator 
     ControlToValidate="txttel"
     ValidationExpression="\+6\d{9,13}|\+0[1-9]\d{10,15}|0[1-9]\d{7,12}|\-"
     runat="server" 
     ErrorMessage="Please enter valid number.Start with either + or 0 " 
     Text="Please enter number starts from + , 0. Spacing not allowed"/>
        </EditItemTemplate>

<ItemStyle Width="150px"></ItemStyle>
    </asp:TemplateField>

                <asp:TemplateField HeaderText="Fax" ItemStyle-Width="150">
        <ItemTemplate>
            <asp:label ID="lblFax" runat="server" Text='<%# Eval("Fax") %>'></asp:label>
        </ItemTemplate>
        <EditItemTemplate>
            <asp:TextBox ID="txtFax" Style="margin-top:54px;" runat="server" Text='<%# Eval("Fax") %>'></asp:TextBox>
            <asp:RegularExpressionValidator 
     ControlToValidate="txtFax"
     ValidationExpression="\+6\d{9,13}|\+0[1-9]\d{10,15}|0[1-9]\d{7,12}|\-"
     runat="server" 
     ErrorMessage="Please enter valid number.Start with either + or 0 " 
     Text="Please enter number starts from + , 0. Spacing not allowed"/>
        </EditItemTemplate>

<ItemStyle Width="150px"></ItemStyle>
    </asp:TemplateField>

                <asp:TemplateField HeaderText="Map_Address" ItemStyle-Width="150">
        <ItemTemplate>
            <asp:label ID="lblMapAddress" runat="server" Text='<%# Eval("MapAddress") %>'></asp:label>
        </ItemTemplate>
        <EditItemTemplate>
            <asp:TextBox ID="txtMapAddress" runat="server" Text='<%# Eval("MapAddress") %>'></asp:TextBox>
        </EditItemTemplate>

<ItemStyle Width="150px"></ItemStyle>
    </asp:TemplateField>


    <asp:CommandField ButtonType="Link" ShowEditButton="true" ShowDeleteButton="true" ItemStyle-Width="150">
<ItemStyle Width="150px"></ItemStyle>
    </asp:CommandField>
</Columns>
            <HeaderStyle BackColor="Black" Font-Names="Times New Roman" ForeColor="White" />
            <RowStyle BackColor="#6699FF" Font-Names="Times New Roman" ForeColor="Black" />
        </asp:GridView>
        
    </div>
    </form>
</body>
</html>
