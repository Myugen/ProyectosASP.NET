<%@ Page Title="Inicio - Dorkytech" Language="C#" MasterPageFile="~/Dorkytech.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Dorkytech.Default" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .accordion {
            width: 100%;
            min-width: 150px;
        }
        .accordionHeader {
            width: 100%;
            background-color: dodgerblue;
            color: aliceblue;
            text-align: center;
            padding: 5px;
        }
        .accordionHeader:first-child {
            border-radius: 6px 6px 0 0;
        }
        .accordionContent {
            background-color: aliceblue;
            padding: 15px;
            width: 100%;
            border: 1px solid cornflowerblue;
        }
        .accordionHeaderSelected {
            width: 100%;
            background-color: cornflowerblue;
            color: aliceblue;
            text-align: center;
            padding: 5px;
        }
        .accordionHeaderSelected:first-child {
            border-radius: 6px 6px 0 0;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
    <div class="col-md-6 col-sm-12 col-xs-12">
        <h1>Empresas colaboradoras</h1>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <ajaxToolkit:Accordion ID="Accordion1" CssClass="accordion" runat="server" FadeTransitions="true" AutoSize="None" TransitionDuration="250"
        FramesPerSecond="40" SelectedIndex="1" HeaderCssClass="accordionHeader" ContentCssClass="accordionContent" HeaderSelectedCssClass="accordionHeaderSelected">
            <Panes>
                <ajaxToolkit:AccordionPane runat="server" ID="AccordionPaneGoogle">
                    <Header>
                        <h4>Dorkytech</h4>
                    </Header>
                    <Content>
                        Juas!
                    </Content>
                </ajaxToolkit:AccordionPane>
                <ajaxToolkit:AccordionPane runat="server" ID="AccordionPaneOther">
                    <Header>
                        <h4>Google</h4>
                    </Header>
                    <Content>
                        yepale
                    </Content>
                </ajaxToolkit:AccordionPane>
            </Panes>
        </ajaxToolkit:Accordion>
    </div>
    <div class="col-md-6 col-sm-12 col-xs-12" >
        <h1>Eventos y Noticias</h1>
        <div class="well">
            <div class="container">
                <div class="col-md-4 col-sm-12 col-xs-12"></div>
                <div class="col-md-4 col-sm-12 col-xs-12">
                    <h4>Tiempo</h4>
                    <asp:Label ID="LabelCiudad" runat="server" Font-Bold="true" Text=""></asp:Label>,&nbsp
                    <asp:Label ID="LabelEstado" runat="server" Text=""></asp:Label><br />
                    <asp:Image ID="ImageTiempo" runat="server" />&nbsp
                    <asp:Label ID="LabelDescripcion" runat="server" Text=""></asp:Label>,&nbsp
                    <asp:Label ID="LabelTemperatura" runat="server" Text=""></asp:Label><br />
                    <asp:Label ID="LabelHumedad" runat="server" Text=""></asp:Label><br />
                    <asp:Label ID="LabelViento" runat="server" Text=""></asp:Label><br />
                    <asp:Label ID="LabelPresion" runat="server" Text=""></asp:Label>
                </div>
                <div class="col-md-4 col-sm-12 col-xs-12"></div>
            </div>
        </div>
        <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/Anuncios.xml" />
    </div>
    </div>
</asp:Content>
