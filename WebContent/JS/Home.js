// JavaScript Document
var Purchase2 = document.getElementById("purchase");
var Purchase = document.getElementById("purchase2");
var OEjectT = document.getElementById("EjectT");
var CloneEjectT = document.getElementById("cloneEjectT");

Purchase.onclick = function(){
	OEjectT.style.display="flex";
}

Purchase2.onclick = function(){
	OEjectT.style.display="flex";
}

CloneEjectT.onclick = function(){
	OEjectT.style.display="none";
}

