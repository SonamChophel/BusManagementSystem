//to show about bus info
var shButton=document.querySelectorAll(".showbus button");
var shPanel=document.querySelectorAll(".buspanel");

function showbusdata(panelIndex,colorCode)
{
    shButton.forEach(function(node)
    {
        node.style.backgroundColor="";
        node.style.color="";
    });
    
    shButton[panelIndex].style.backgroundColor=colorCode;
    shButton[panelIndex].style.color="white";

    shPanel.forEach(function(node)
    {
        node.style.display="none";
    });
    
    shPanel[panelIndex].style.display="block";
    shPanel[panelIndex].style.backgroundColor=colorCode;
}
showbusdata(0,'#5578AB');
