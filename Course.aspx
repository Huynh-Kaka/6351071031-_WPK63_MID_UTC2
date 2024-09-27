<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultPageMaster.Master" AutoEventWireup="true" CodeBehind="Course.aspx.cs" Inherits="de1.Course1" %>
<%@ Register src="UserControl/CourseList.ascx" tagname="CourseList" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:CourseList ID="CourseList1" runat="server" />
</asp:Content>
