$('#toggle-upload').click(function () {
    $('#upload').toggle();
});

$('#toggle-upload').keypress(function (e) {
    if (e.keyCode === 27) {
        //if (document.getElementById("#upload").style.display = "none") {
            $('#upload').toggle();
        //}
    }
});