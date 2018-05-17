﻿<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Default.aspx.vb" Inherits="WingScanDemo._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="WebDocViewer/jquery-1.11.0.min.js" type="text/javascript"></script>
    <script src="WebDocViewer/jquery.easing.1.3.js" type="text/javascript"></script>
    <script src="WebDocViewer/jquery-ui-1.10.4.min.js" type="text/javascript"></script>
    <script src="WebDocViewer/raphael-min.js" type="text/javascript"></script>
    <script src="WebDocViewer/atalaWebDocumentViewer.js" type="text/javascript"></script>
	<link href="WebDocViewer/jquery-ui-1.10.4.min.css" rel="stylesheet" type="text/css" />
	<link href="WebDocViewer/atalaWebDocumentViewer.css" rel="stylesheet" type="text/css" />
    <script src="WebCapture/atalaWebCapture.js" type="text/javascript"></script>
    <script src="Scripts/Initialization.js" type="text/javascript"></script>
    <script src="Scripts/ErrorsAndEvents.js" type="text/javascript"></script>
    <script src="Scripts/Customization.js" type="text/javascript"></script>
    <link href="WingScanStyling.css" rel="stylesheet" type="text/css" />
    <!--[if lte IE 8]>
<script src="Scripts/html5.js" type="text/javascript"></script>
<![endif]-->
    <title>Atalasoft's WingScan Demo</title>
</head>
<body>
    <form id="form1" runat="server">
    <header>
        <img src="Resources/header.png" alt="Welcome to Atala Bank!*" />
    </header>
    <section>
        <ul class="mainsection">
            <li class="left">
                <img src="Resources/leftbar.png" alt="Quick Links" />
            </li>
            <li class="middle">
                <div class="atala-document-toolbar">
                </div>
                <div class="atala-document-container">
                </div>
            </li>
        </ul>
    </section>
    <div id="SelectScannerDialog" class="scannerDialog" style="position: absolute; left: 40%;
        top: 40%; visibility: hidden; outline: #3AC solid 3px; background-color: white;
        padding: 15px;">
        <p>
            Select Scanner:<br>
            <select class="atala-scanner-list" disabled="disabled" name="scannerList">
                <option selected="selected">(no scanners available)</option>
            </select>
        </p>
        <p>
            <input type="button" title="Close" id="CloseButton" value="Close" onclick="ScannerDialogClick();"
                style="float: right;">
        </p>
    </div>
    <div class="atala-prompt-message" style="position: absolute; left: 40%; top: 40%;
        visibility: hidden; outline: #3AC solid 3px; background-color: white; padding: 15px;">
        <p>
            <input type="button" title="Close" id="Button1" value="Close" onclick="PromptMessageClick();"
                style="float: right;">
        </p>
    </div>
    <div id="LoadingGif" class="loadingGif" style="visibility: hidden;">
    </div>
    </form>
</body>
</html>