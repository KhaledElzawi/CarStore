<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 547px;
            background-image: url('car.jpg');
        }
        .auto-style2 {
            height: 132px;
            color: #FF0000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
 <center>
    <table class="auto-style1">
        <tr>
            <td class="auto-style2" style="font-family: 'Britannic Bold'; font-size: xx-large">Car store</td>
        </tr>
        <tr>
            <td>&nbsp;<br />
                <asp:TextBox ID="TextBox1" runat="server" Height="22px" Width="242px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" BorderStyle="None" ForeColor="White" Text="car number" Width="150px"></asp:Label>
                <br />
                <br />
                <asp:TextBox ID="TextBox2" runat="server" Height="27px" Width="239px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" ForeColor="White" Text="car name"></asp:Label>
                <br />
                <br />
                <asp:TextBox ID="TextBox3" runat="server" Width="251px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label3" runat="server" ForeColor="White" Text="car type"></asp:Label>
                <br />
                <br />
                <asp:TextBox ID="TextBox4" runat="server" Width="252px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label4" runat="server" ForeColor="White" Text="car price"></asp:Label>
                <br />
                <br />
                <asp:TextBox ID="TextBox5" runat="server" Width="236px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label5" runat="server" ForeColor="#0066FF" Text="production year"></asp:Label>
                <br />
                <br />
                <asp:Image ID="Image1" runat="server" Height="303px" Width="336px" />
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" Text="upload" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:FileUpload ID="FileUpload1" runat="server" />
                <br />
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="Button2" runat="server" Height="41px" Text="save" Width="108px" />
                <br />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:abc %>" SelectCommand="SELECT * FROM [car2]"></asp:SqlDataSource>
                <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="366px" Width="758px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" />
                        <asp:BoundField DataField="car_name" HeaderText="car_name" SortExpression="car_name" />
                        <asp:BoundField DataField="car_type" HeaderText="car_type" SortExpression="car_type" />
                        <asp:BoundField DataField="car_price" HeaderText="car_price" SortExpression="car_price" />
                        <asp:BoundField DataField="car_date" HeaderText="car_date" SortExpression="car_date" />
                        <asp:ImageField DataImageUrlField="image" DataImageUrlFormatString="~~/image/{0}" HeaderText="images">
                        </asp:ImageField>
                    </Columns>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                    <SortedDescendingHeaderStyle BackColor="#820000" />
                </asp:GridView>
                <br />
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</center>

        </div>

    </form>
   
</body>
</html>
