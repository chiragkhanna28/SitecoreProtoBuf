<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReadProtoBuf.aspx.cs" Inherits="ReadProtoBuf.ReadProtoBuf" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:GridView ID="ProtoBufData" runat="server"  AutoGenerateColumns="false" RowStyle-BackColor="LightCyan" HeaderStyle-Height="30px" HeaderStyle-ForeColor="White" HeaderStyle-BackColor="OrangeRed">
            <RowStyle HorizontalAlign="Center" />
            <Columns>
                <asp:TemplateField ItemStyle-Width="300px" ItemStyle-Height="20px" ItemStyle-Wrap="true" HeaderText="Item ID">
                    <ItemTemplate>
                        <asp:Label ID="ItemID" runat="server" Text='<%#Eval("ItemId")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                 <asp:TemplateField ItemStyle-Width="175px" ItemStyle-Height="20px" ItemStyle-Wrap="true"  HeaderText="Item Name">
                    <ItemTemplate>
                        <asp:Label ID="ItemName" runat="server" Text='<%#Eval("ItemName")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField ItemStyle-Width="300px" ItemStyle-Height="20px" ItemStyle-Wrap="true"  HeaderText="Template ID">
                    <ItemTemplate>
                        <asp:Label ID="TemplateID" runat="server" Text='<%#Eval("TemplateId")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
