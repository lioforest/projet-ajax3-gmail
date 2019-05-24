// Fonctionnalité 1 :
function mail() {
	let mailClick = document.getElementById("email<%=email.id%>");
	mailClick.addEventListener("click", function() {
		console.log(`Click`);
	 });
};
mail()

