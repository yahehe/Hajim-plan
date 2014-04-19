'use strict';

$(window).load(function(){
	$(function() { 
	    $("#btnSave").click(function() { 
	        html2canvas($(".majors"), {
	            onrendered: function(canvas) {
	                theCanvas = canvas;
	               // document.body.appendChild(canvas);

	                // Convert and download as image 
	                Canvas2Image.saveAsPNG(canvas);
	                // Clean up 
	                //document.body.removeChild(canvas);
	            }
	        });
	    });
	}); 
}); 
	