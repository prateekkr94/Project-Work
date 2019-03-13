var mylink = ["https://static-email-hosting.s3.amazonaws.com/24G_Test_Project/videos/who_is_24g.mp4", 
			  "https://static-email-hosting.s3.amazonaws.com/24G_Test_Project/videos/ces_overview.mp4",
			  "https://static-email-hosting.s3.amazonaws.com/24G_Test_Project/videos/future_of_drones.mp4"]
				 
var vidtitle = ["Who is 24G?", 
				"CES Overview",
				"Future of Drones"]		


function changeSource(val){
	ele = document.getElementById('my_video');
	ele.src = val;
	ele.play();
	changeTitle(val);
}

function changeTitle(val){
	var ind1 = mylink.indexOf(val);
	document.getElementById("vid_title").innerHTML = vidtitle[ind1];
	setCookie(ind1);
}

	var v1=0;
	var v2=0;
	var v3=0;
	var l1=0;
	var l2=0;
	var l3=0;
	var d1=0;
	var d2=0;
	var d3=0;
	var cook_val=0;
	var view1 = document.getElementById("view1").innerHTML;
	var like1 = document.getElementById("like1").innerHTML; 
	var dislike1 = document.getElementById("dislike1").innerHTML;
	
function setCookie(cook_val){
	window.cook_val = cook_val
	
	if(cook_val==0){
		v1 = v1 + 1;
		view1 = v1;
		like1 = l1;
		dislike1 = d1;
	}
	else if(cook_val==1){
		v2 = v2 + 1;
		view1 = v2;
		like1 = l2;
		dislike1 = d2;
	}
	else if(cook_val==2){
		v3 = v3 + 1;
		view1 = v3;
		like1 = l3;
		dislike1 = d3;
	}
	
	document.cookie = "View=" + view1;
	document.cookie = "Likes=" + like1;
	document.cookie = "Dislikes=" + dislike1;
	//alert(document.cookie);
	getCookie();
}

function like(){
	var like1 = document.getElementById("like1").innerHTML;
	
	if(cook_val==0){
		l1 = l1 + 1;
		like1 = l1;
	}
	else if(cook_val==1){
		l2 = l2 + 1;
		like1 = l2;
	}
	else if(cook_val==2){
		l3 = l3 + 1;
		like1 = l3;
	}
	
	document.cookie = "Likes=" + like1;
	//alert(document.cookie);
	getCookie();
}

function dislike(){
	var dislike1 = document.getElementById("dislike1").innerHTML;
	
	if(cook_val==0){
		d1 = d1 + 1;
		dislike1 = d1;
	}
	else if(cook_val==1){
		d2 = d2 + 1;
		dislike1 = d2;
	}
	else if(cook_val==2){
		d3 = d3 + 1;
		dislike1 = d3;
	}
	
	document.cookie = "Dislikes=" + dislike1;
	//alert(document.cookie);
	getCookie();
}

function getCookie(){
	//alert(document.cookie);
	var cookArray = document.cookie.split("; ");
	
	for(var i=0; i<cookArray.length; i++){
		var nameArr = cookArray[i].split("=");
		
		if(nameArr[0]=="View"){
			document.getElementById("view1").innerHTML = nameArr[1];
		}
		else if(nameArr[0]=="Likes"){
			document.getElementById("like1").innerHTML = nameArr[1];
		}
		else if(nameArr[0]=="Dislikes"){
			document.getElementById("dislike1").innerHTML = nameArr[1];
		}
	}
}