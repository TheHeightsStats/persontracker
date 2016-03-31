<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="sms._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
    <asp:GridView ID="GridView1" runat="server"
        AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" 
        GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:TemplateField HeaderText="PSNNAME">
            <ItemTemplate>
            
        <asp:Label ID="lbl_name" runat="server" Text='<%#Eval("STD_NAME")%>'></asp:Label>
              
            </ItemTemplate>
            <EditItemTemplate>
              <asp:TextBox ID="txtName" runat="server" Text='<%#Eval("STD_NAME")%>'></asp:TextBox>
            </EditItemTemplate>
            </asp:TemplateField>
 
            <asp:TemplateField HeaderText="PSNPNAME">
            <ItemTemplate>
                <asp:Label ID="lblFName" runat="server" Text='<%#Eval("STD_FNAME")%>'></asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
              <asp:TextBox ID="txtFName" runat="server" Text='<%#Eval("STD_FNAME")%>'></asp:TextBox>
            </EditItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="ADDRESS"><ItemTemplate>
                <asp:Label ID="lblADDRESS" runat="server" Text='<%#Eval("STD_ADDRESS")%>'></asp:Label>
        
            </ItemTemplate>
            <EditItemTemplate><asp:TextBox ID="ADDRESS" runat="server" Text='<%#Eval("STD_ADDRESS")%>'></asp:TextBox></EditItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="TELEPHONE"><ItemTemplate>
                <asp:Label ID="lblPHONE" runat="server" Text='<%#Eval("STD_TEL")%>'></asp:Label>
            </ItemTemplate>
            <EditItemTemplate> <asp:TextBox ID="PHONE" runat="server" Text='<%#Eval("STD_TEL")%>'></asp:TextBox></EditItemTemplate>
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText=""><ItemTemplate>
              </ItemTemplate><asp:Button ID="ApproveButton" runat="server" Text="Approve" onclick="ApproveStudent_OnClick"></onclikc>></asp:Button>
            </asp:TemplateField>

        </Columns>
        
        
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        
        
    </asp:GridView>

</asp:Content>
