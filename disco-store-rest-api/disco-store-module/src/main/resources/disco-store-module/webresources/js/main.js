var J = jQuery.noConflict();

J(document).ready(function(){
	fakeFile();
});

function fakeFile(){
	J('div.fake-file').click(function(){
		J('input[type="file"]').click();
	});
}