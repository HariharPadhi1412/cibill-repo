<%@ Page Title="" Language="C#" MasterPageFile="~/CibilPortal.Master" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="CIBILReport.User.User" %>

<asp:Content ID="ContentPlaceHolder1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>
        body {
            margin-top: 0px;
            color: #1a202c;
            text-align: left;
            background-color: #e2e8f0;
        }

        .main-body {
            padding: 15px;
        }

        .card {
            box-shadow: 0 1px 3px 0 rgba(0,0,0,.1), 0 1px 2px 0 rgba(0,0,0,.06);
        }

        .card {
            position: relative;
            display: flex;
            flex-direction: column;
            min-width: 0;
            background-color: #fff;
            background-clip: border-box;
            border: 0 solid rgba(0,0,0,.125);
            border-radius: .25rem;
        }

        .card-body { /*
            flex: 1 1 auto;
            min-height: 1px;*/
            padding: 1rem;
        }

        .gutters-sm {
            margin-right: -8px;
            margin-left: -8px;
        }

            .gutters-sm > .col, .gutters-sm > [class*=col-] {
                padding-right: 8px;
                padding-left: 8px;
            }

        .mb-3, .my-3 {
            margin-bottom: 1rem !important;
        }

        .bg-gray-300 {
            background-color: #e2e8f0;
        }

        .h-100 {
            height: 100% !important;
        }

        .shadow-none {
            box-shadow: none !important;
        }

        .mt-3-custom {
            margin-top: 1.5rem;
        }

        .mb-3-custom {
            margin-bottom: 1.5rem;
        }

        .rounded-input {
            border-radius: 0.375rem;
        }
    </style>

    <%--<script src="javascript/MyProfile.js" type="text/javascript"></script>--%>

    <div class="container mt-3-custom">
        <div class="main-body">

            <div class="row gutters-sm" style="margin-top: 50px; margin-left: 120px">

                <div class="col-md-6">
                    <div class="card mb-3">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-sm-4">
                                    <h6 class="mb-0">Full Name</h6>
                                </div>
                                <div class="col-sm-6 text-secondary">
                                    <input type="text" class="enableField form-control rounded-input " id="empFullName" />
                                </div>
                            </div>
                            <hr>
                            <div class="row">
                                <div class="col-sm-4">
                                    <h6 class="mb-0">Type</h6>
                                </div>
                                <div class="col-sm-6 text-secondary">
                                    <input type="text" class=" form-control rounded-input" id="empType" />
                                </div>
                            </div>
                            <hr>
                            <div class="row">
                                <div class="col-sm-4">
                                    <h6 class="mb-0">User ID</h6>
                                </div>
                                <div class="col-sm-6 text-secondary">
                                    <input type="text" class=" form-control rounded-input" id="empUserID" />
                                </div>
                            </div>
                            <hr>
                            <div class="row">
                                <div class="col-sm-4">
                                    <h6 class="mb-0">Email ID</h6>
                                </div>
                                <div class="col-sm-6 text-secondary">
                                    <input type="text" class=" form-control rounded-input" id="empEmailID" />
                                </div>
                            </div>
                            <hr>
                            <div class="row">
                                <div class="col-sm-4">
                                    <h6 class="mb-0">Employee Code</h6>
                                </div>
                                <div class="col-sm-6 text-secondary">
                                    <input type="text" class="enableField form-control rounded-input " id="empCode" />
                                </div>
                            </div>
                            <hr>
                            <div class="row">
                                <div class="col-sm-4">
                                    <h6 class="mb-0">Department</h6>
                                </div>
                                <div class="col-sm-6 text-secondary">
                                    <input type="text" class=" form-control rounded-input" id="empDept" />
                                </div>
                            </div>
                            <hr>
                            <div class="row">
                                <div class="col-sm-4">
                                    <h6 class="mb-0">Mobile Number</h6>
                                </div>
                                <div class="col-sm-6 text-secondary">
                                    <input type="text" class=" form-control rounded-input" id="empMobileNo" />
                                </div>
                            </div>
                            <hr>
                            <div class="row">
                                <div class="col-sm-12">
                                    <%--<input class="btn btn-primary" type="button" value="Edit" onclick="makeInputEditable(['empCode','empFullName'])" />--%>
                                    <input class="btn btn-primary" type="button" value="Save" onclick="saveInputFields(['empCode','empFullName'])" />
                                </div>
                            </div>
                        </div>
                    </div>

                </div>

            </div>
        </div>
    </div>
</asp:Content>

