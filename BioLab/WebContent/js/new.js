
$(document).ready(function() {
	$('input[type="checkbox"]').click(function() {
		var inputValue = $(this).attr("value");
		$("." + inputValue).toggle();
	});
});
/* TESTIMONIAL */
$(function(){

 var testimonials = $(".testimonial-group > li");
 var testimonial = $("#testimonial");
 var i = 0;

 function advTestimonial(){
  testimonial.html(testimonials[i++].innerHTML);
  if(i === testimonials.length-1){i = 0;}
  setTimeout(advTestimonial, 7000);
 }

 advTestimonial();

});