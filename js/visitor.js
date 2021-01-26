$(document).ready(function () {
    $("#pays").change(function (e) { 
        e.preventDefault();
         
        const selectedCountry = $(this).children("option:selected").val();
        
        console.log(selectedCountry);
        // const data = $("#pays").val;
        $.post("./controller/getcity.php", {selectedCountry : selectedCountry} ,
            function (r) {
                console.log(r);
                $("#ville").html(r);
            },
        );
    });
});