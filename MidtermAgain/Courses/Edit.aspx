﻿<%@ Page Title="Course Edit" Language="C#" MasterPageFile="~/Defualt.Master" CodeBehind="Edit.aspx.cs" Inherits="MidtermAgain.Courses.Edit" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div class="main-wrapper">
    <div>
		<p>&nbsp;</p>
        <asp:FormView runat="server"
            ItemType="MidtermAgain.Model.Cours" DefaultMode="Edit" DataKeyNames="Id"
            UpdateMethod="UpdateItem" SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the Cours with Id <%: Request.QueryString["Id"] %>
            </EmptyDataTemplate>
            <EditItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Edit Course</legend>
					<asp:ValidationSummary runat="server" CssClass="alert alert-danger"  />                 
						    <asp:DynamicControl Mode="Edit" DataField="CourseID" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="CourseName" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="CourseDescription" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="CourseCost" runat="server" />
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
							<asp:Button runat="server" ID="UpdateButton" CommandName="Update" Text="Update" CssClass="btn btn-primary" />
							<asp:Button runat="server" ID="CancelButton" CommandName="Cancel" Text="Cancel" CausesValidation="false" CssClass="btn btn-default" />
						</div>
					</div>
                </fieldset>
            </EditItemTemplate>
        </asp:FormView>
    </div>
        </div>
</asp:Content>

