<%@ Page Title="Pasarela de Pagos" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="WebSisGesMM.Inicio" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <h1>
        <asp:Image ID="Image1" runat="server" Height="155px" ImageUrl="~/Imagenes/LogoSena1.png" Width="173px" />
        <asp:Image ID="Image2" runat="server" Height="70px" ImageUrl="~/Imagenes/Wompi.png" Width="194px" />
    </h1>

    <div class="jumbotron">

        <p class="lead">Dirección General - Dirección Administrativa y Financiera -&nbsp; Grupo de Recaudo y Cartera</p>
        <table class="nav-justified" style="width: 66%">
            <tr>
                <td style="color: #800000; width: 321px;" class="modal-sm"><strong>Número de la Prefactura a Pagar:</strong></td>
                <td>
                    <asp:TextBox ID="txtPreFactura" runat="server" MaxLength="6" PlaceHolder="Prefactura" ValidationGroup="btnBuscar" Width="170px"></asp:TextBox>

                    <ajaxtoolkit:filteredtextboxextender ID="txtPreFactura_FilteredTextBoxExtender" runat="server" FilterType="Numbers" InvalidChars="." TargetControlID="txtPreFactura" />

                </td>
                <td>
                    <asp:Button ID="btnBuscar" runat="server" OnClick="btnBuscar_Click" Text="Buscar" ValidationGroup="btnBuscar" Width="170px" />
                </td>
                <td>
                    <asp:Button ID="btnLimpiar" runat="server" OnClick="btnLimpiar_Click" Text="Limpiar" Width="170px" />
                </td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 321px">&nbsp;</td>
                <td colspan="2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPreFactura" ErrorMessage="El Número de la Prefactura es Requerida" Font-Bold="True" ForeColor="Maroon" SetFocusOnError="True" ValidationGroup="btnBuscar"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 321px">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <p>
            <asp:GridView ID="grvDocumentoWompi" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataSourceID="SdSBuscarDocumentoWompi" PageSize="1" Width="1108px" style="font-size: small">
                <Columns>
                    <asp:BoundField DataField="NombreRegional" HeaderText="Regional" SortExpression="NombreRegional" />
                    <asp:BoundField DataField="CodigoCentroFormacion" HeaderText="Codigo" SortExpression="CodigoCentroFormacion" />
                    <asp:BoundField DataField="NombreCentroFormacion" HeaderText="Centro Formación" SortExpression="NombreCentroFormacion" />
                    <asp:BoundField DataField="NumeroFactura" HeaderText="PreFactura" SortExpression="NumeroFactura">
                        <ItemStyle Font-Bold="True" ForeColor="Maroon" HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Identificacion" HeaderText="Identificacion" SortExpression="Identificacion" />
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre Cliente" SortExpression="Nombre" />
                    <asp:BoundField DataField="Valor" DataFormatString="{0:N0}" HeaderText="Valor" ReadOnly="True" SortExpression="Valor">
                        <ItemStyle Font-Bold="True" ForeColor="Maroon" HorizontalAlign="Right" />
                    </asp:BoundField>
                    <%--            <asp:BoundField DataField="FechaCrea" HeaderText="FechaCrea" SortExpression="FechaCrea" DataFormatString="{0:d}" />--%>
                    <asp:BoundField DataField="Contacto" HeaderText="Correo" SortExpression="Contacto" />
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#333333" />
                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#487575" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#275353" />
            </asp:GridView>
        </p>
        <p style="height: 49px">
            <asp:Button ID="btnPagar" runat="server" BackColor="#5CB85C" Font-Bold="True" Font-Strikeout="False" Height="44px" OnClick="btnPagar_Click" Text="Ir a Pagar" Visible="False" Width="431px" />
        </p>
    </div>

    <div class="row">
        <%--        <div class="col-md-4">
            <h2>Web Hosting</h2>
            <p>
                You can easily find a web hosting company that offers the right mix of features and price for your applications.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
            </p>
        </div>--%>
        <%--        <div class="col-md-4">
            <h2>Get more libraries</h2>
            <p>
                NuGet is a free Visual Studio extension that makes it easy to add, remove, and update libraries and tools in Visual Studio projects.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
            </p>
        </div>--%>
        <%--        <div class="col-md-4">
            <h2>Web Hosting</h2>
            <p>
                You can easily find a web hosting company that offers the right mix of features and price for your applications.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
            </p>
        </div>--%>
    </div>

    <table class="nav-justified" style="height: 32px">
        <tr>
            <td>
                <asp:SqlDataSource ID="SdSBuscarDocumentoWompi" runat="server" ConnectionString="<%$ ConnectionStrings:CentroFormacion %>" SelectCommand="[CentroFormacion].[Usp_BuscarFacturaXNumeroFacturaWompi]" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="txtPreFactura" Name="NumeroFactura" PropertyName="Text" Type="Int64" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                <asp:HiddenField ID="hfLinkWompi" runat="server" />
            </td>
            <td>
                <asp:HiddenField ID="hfNombreCentro" runat="server" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>

</asp:Content>
