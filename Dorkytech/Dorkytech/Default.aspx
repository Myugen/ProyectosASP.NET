<%@ Page Title="Inicio - Dorkytech" Language="C#" MasterPageFile="~/Dorkytech.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Dorkytech.Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Empresas colaboradoras</h1>
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <ajaxToolkit:Accordion ID="Accordion1" runat="server" FadeTransitions="true" TransitionDuration="250"
    FramesPerSecond="40">
        <Panes>
            <ajaxToolkit:AccordionPane runat="server">
                <Header>Google</Header>
                <Content>
                    <a href="http://www.google.com">www.google.es</a>
                </Content>
            </ajaxToolkit:AccordionPane>
        </Panes>
    </ajaxToolkit:Accordion>
    <h1>Eventos y Noticias</h1>
    <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/Anuncios.xml" />
</asp:Content>
