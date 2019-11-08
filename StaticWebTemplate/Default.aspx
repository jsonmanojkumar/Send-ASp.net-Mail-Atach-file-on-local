<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

   <div class="carousel-inner">
                <div class="item slides">
                    <div class="slide-1"></div>
                    <div class="hero">
                        <span>learn and build your life</span>
                        <h1>gain knowledge from <strong>education park</strong></h1>
                        <a href="#" class="btn btn-default irs-big-btn" role="button">Register</a>
                    </div>
                </div>
                <div class="item slides">
                    <div class="slide-2"></div>
                    <div class="hero">
                        <span>learn and build your life</span>
                        <h1>gain knowledge from <strong>education park</strong></h1>
                        <a href="#" class="btn btn-default irs-big-btn" role="button">Register</a>
                    </div>
                </div>
                <div class="item slides active">
                    <div class="slide-3"></div>
                    <div class="hero">
                        <span>learn and build your life</span>
                        <h1>gain knowledge from <strong>education park</strong></h1>
                        <a href="#" class="btn btn-default irs-big-btn" role="button">Register</a>
                    </div>
                </div>
            </div>




    <div class="container">
        <div class="row">
            <div class="col-md-6 col-md-offset-4">
                <table style="width: 69%; align-self: center; height: 167px;">
                    <tr>
                        <td>
                            <asp:label id="Label1" runat="server" text="Label">name</asp:label>
                        </td>
                        <td>
                            <asp:textbox id="txtName" cssclass="form-control" runat="server"></asp:textbox>
                          
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:label id="Label2" runat="server" text="Label">Email</asp:label>
                        </td>
                        <td>
                            <asp:textbox id="txtEmail" cssclass="form-control" runat="server"></asp:textbox>

                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:label id="Label3" runat="server" text="Label">mobile</asp:label>
                        </td>
                        <td>
                            <asp:textbox id="txtMobile" cssclass="form-control" runat="server"></asp:textbox>

                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:label id="Label4" runat="server" text="Label">age</asp:label>
                        </td>
                        <td class="glyphicon">
                            <asp:textbox id="txtAge" cssclass="form-control" runat="server"></asp:textbox>
                            <br />
                            <asp:label id="lblMsg" runat="server" style="color: green"></asp:label>
                            <br />
                            <asp:button id="btnSubmit" cssclass="btn btn-success" runat="server" text="Submit"  tooltip="submit" height="40px"  width="118px" />
                           
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>



     <div class="row">
        <div class="col-lg-10 col-md-offset-1">
            <section class="panel">
                <table class="table table-striped table-advance table-hover">
                    <tbody>
                        <tr>
                            <th><i></i>ID</th>
                            <th><i></i>Name</th>
                            <th><i></i>Mobile</th>
                            <th><i></i>Email</th>
                            <th><i></i>Action</th>
                        </tr>
                        <asp:repeater id="rpStudent" runat="server" onitemcommand="rpStudent_ItemCommand">
                                 <ItemTemplate>
                                    <tr>
                                        <td><%#Eval("id") %></td>
                                        <td><%#Eval("name") %></td>
                                        <td><%#Eval("mobile") %></td>
                                         <td><%#Eval("email") %></td>
                                        <td>
                                            <div class="btn-group">
                                                <asp:LinkButton class="btn btn-success" runat="server" ID="btnEdit" CommandArgument='<%#Eval("id") %>' CommandName="edit"><i class="icon_check_alt2">Edit</i></asp:LinkButton>
                                                <asp:LinkButton ID="btnDelete" runat="server" CommandArgument='<%#Eval("id") %>' CommandName="delete" class="btn btn-danger"><i class="icon_close_alt2">Delete</i></asp:LinkButton>
                                            </div>
                                        </td>
                                    </tr>
                                </ItemTemplate>
                            </asp:repeater>
                    </tbody>
                </table>
            </section>
        </div>
    </div>


</asp:Content>

