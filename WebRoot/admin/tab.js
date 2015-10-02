// JavaScript Document
function $(id){
   return typeof id==='string'?document.getElementById(id):id; 
}
window.onload=tab;
function tab(){
	var index=0;
	var timer=null;
	var lis=$('notice-tit').getElementsByTagName('li');
	var divs=$('notice-con').getElementsByTagName('div');
	for(var i=0;i<lis.length;i++){
		lis[i].id=i;
		lis[i].onmouseover=function(){
			change(this.id);
	 }
	
  }
	function change(curindex){
			 for(var j=0;j<lis.length;j++){
				lis[j].className='';
				divs[j].style.display='none';
				}
			    lis[curindex].className='select';
			    divs[curindex].style.display='block';
				index=curindex;
				}
		}