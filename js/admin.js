//for front page of admin
var tabsButtons=document.querySelectorAll(".sidebar1 .btn1");
var tabsPanels=document.querySelectorAll(".sidebar2");

function displayPanel(panelIndex)
{
    tabsButtons.forEach(function(node)
    {
        node.style.backgroundColor=""
        node.style.color="";
    });
    
    tabsButtons[panelIndex].style.color="white";
    tabsButtons[panelIndex].style.backgroundColor="rgba(0,0,0,0)";

    tabsPanels.forEach(function(node)
    {
        node.style.display="none";
    });
    
    tabsPanels[panelIndex].style.display="block";
}
displayPanel(1);

//for dashboard

var tabButtons=document.querySelectorAll(".btn");
var tabPanels=document.querySelectorAll(".mainbar");

function showPanel(panelIndex)
{
    tabButtons.forEach(function(node)
    {
        node.style.backgroundColor="";
        node.style.color="";
    });
    
    tabButtons[panelIndex].style.backgroundColor="#D0CDCD";
    tabButtons[panelIndex].style.color="blue";

    tabPanels.forEach(function(node)
    {
        node.style.display="none";
    });
    
    tabPanels[panelIndex].style.display="block";
}
showPanel(0);


//for createdata

var addButton=document.querySelectorAll(".create1 button");
var addPanel=document.querySelectorAll(".ctpanel");

function displayAdd(panelIndex,colorCode)
{
    addButton.forEach(function(node)
    {
        node.style.backgroundColor="";
        node.style.color="";
    });
    
    addButton[panelIndex].style.backgroundColor=colorCode;
    addButton[panelIndex].style.color="white";

    addPanel.forEach(function(node)
    {
        node.style.display="none";
    });
    
    addPanel[panelIndex].style.display="block";
    addPanel[panelIndex].style.backgroundColor=colorCode;
}
displayAdd(0,'#E02323');

//for update data

var upButton=document.querySelectorAll(".updates button");
var upPanel=document.querySelectorAll(".uppanel");

function showUpdate(panelIndex,colorCode)
{
    upButton.forEach(function(node)
    {
        node.style.backgroundColor="";
        node.style.color="";
    });
    
    upButton[panelIndex].style.backgroundColor=colorCode;
    upButton[panelIndex].style.color="white";

    upPanel.forEach(function(node)
    {
        node.style.display="none";
    });
    
    upPanel[panelIndex].style.display="block";
    upPanel[panelIndex].style.backgroundColor=colorCode;
}
showUpdate(0,'#E02323');

//for delete data

var delButton=document.querySelectorAll(".deletes button");
var delPanel=document.querySelectorAll(".delpanel");

function showDelete(panelIndex,colorCode)
{
    delButton.forEach(function(node)
    {
        node.style.backgroundColor="";
        node.style.color="";
    });
    
    delButton[panelIndex].style.backgroundColor=colorCode;
    delButton[panelIndex].style.color="white";

    delPanel.forEach(function(node)
    {
        node.style.display="none";
    });
    
    delPanel[panelIndex].style.display="block";
    delPanel[panelIndex].style.backgroundColor=colorCode;
}
showDelete(0,'#E02323');

//to view drivers information 

var driBtns=document.querySelectorAll(".driBtn");
var driPanels=document.querySelectorAll(".displayDriPanel");

function showDriInfo(panelIndex,colorCode)
{
    driBtns.forEach(function(node)
    {
        node.style.backgroundColor=""
        node.style.color="";
    });
    
    driBtns[panelIndex].style.color="white";
    driBtns[panelIndex].style.backgroundColor=colorCode;

    driPanels.forEach(function(node)
    {
        node.style.display="none";
    });
    
    driPanels[panelIndex].style.display="block";
    driPanels[panelIndex].style.backgroundColor=colorCode;
}
showDriInfo(0,"#AAA4A4");

//to view buses information
var busBtns=document.querySelectorAll(".BusBtn");
var busPanels=document.querySelectorAll(".displayBusPanel");

function showBusInfo(panelIndex,colorCode)
{
    busBtns.forEach(function(node)
    {
        node.style.backgroundColor=""
        node.style.color="";
    });
    
    busBtns[panelIndex].style.color="white";
    busBtns[panelIndex].style.backgroundColor=colorCode;

    busPanels.forEach(function(node)
    {
        node.style.display="none";
    });
    
    busPanels[panelIndex].style.display="block";
    busPanels[panelIndex].style.backgroundColor=colorCode;
}
showBusInfo(0,"#AAA4A4");


//to view student information
var stdBtns=document.querySelectorAll(".StdBtn");
var stdPanels=document.querySelectorAll(".displayStdPanel");

function showStdInfo(panelIndex,colorCode)
{
    stdBtns.forEach(function(node)
    {
        node.style.backgroundColor=""
        node.style.color="";
    });
    
    stdBtns[panelIndex].style.color="white";
    stdBtns[panelIndex].style.backgroundColor=colorCode;

    stdPanels.forEach(function(node)
    {
        node.style.display="none";
    });
    
    stdPanels[panelIndex].style.display="block";
    stdPanels[panelIndex].style.backgroundColor=colorCode;
}
showStdInfo(0,"#AAA4A4");

//to view faculty information
var falBtns=document.querySelectorAll(".FalBtn");
var falPanels=document.querySelectorAll(".displayFalPanel");

function showFalInfo(panelIndex,colorCode)
{
    falBtns.forEach(function(node)
    {
        node.style.backgroundColor=""
        node.style.color="";
    });
    
    falBtns[panelIndex].style.color="white";
    falBtns[panelIndex].style.backgroundColor=colorCode;

    falPanels.forEach(function(node)
    {
        node.style.display="none";
    });
    
    falPanels[panelIndex].style.display="block";
    falPanels[panelIndex].style.backgroundColor=colorCode;
}
showFalInfo(0,"#AAA4A4");


//to view Staff info
var stfBtns=document.querySelectorAll(".StaffBtn");
var stfPanels=document.querySelectorAll(".displayStaffPanel");

function showStaffInfo(panelIndex,colorCode)
{
    stfBtns.forEach(function(node)
    {
        node.style.backgroundColor=""
        node.style.color="";
    });
    
    stfBtns[panelIndex].style.color="white";
    stfBtns[panelIndex].style.backgroundColor=colorCode;

    stfPanels.forEach(function(node)
    {
        node.style.display="none";
    });
    
    stfPanels[panelIndex].style.display="block";
    stfPanels[panelIndex].style.backgroundColor=colorCode;
}
showStaffInfo(0,"#AAA4A4");

