//****** Globala variabler
let imgID
let cID

//****** Tar bort element och visar nya via Or can you do better
document.getElementById("showForm").addEventListener("click", function() {
    document.getElementById("formen").style.display = "flex"
    document.getElementById("formet").style.display = "flex"
    $('.container').css('display', 'block');
    $('.rating').css('display', 'none');
    $('.knapp').css('display', 'none');
    $('#showForm').css('display', 'none');
    $('#goBack').css('display', 'block');
})

//****** Tar bort element och visar nya via HOME
document.getElementById("goBack").addEventListener("click", function() {
    document.getElementById("formen").style.display = "none"
    document.getElementById("formet").style.display = "none"
    $('.container').css('display', 'flex');
    $('.rating').css('display', 'flex');
    $('.knapp').css('display', 'flex');
    $('#showForm').css('display', 'block');
    $('#goBack').css('display', 'none');
    updateImage()
})


$('.knapp').click(function(event) {
    updateImage()
})

//****** Laddar upp ny caption till databasen
$('#formet').submit(function(event) {
    event.preventDefault()
    let value = $('#formet input[type="text"]').val()
    $.get('../php/get.php', {
            action: 'newCaption',
            value: value,
            imgID: imgID
        })
        .done(function(data) {
            $('.caption').html(value)
        })
})

//****** Visar en slumpmässig bild
function updateImage() {
    $.get('../php/get.php', {
            action: 'randImg'
        })
        .done(function(data) {
            data = JSON.parse(data)
            for (let i = 0; i < data.length; i++) {
                $('.imgcontainer').css('backgroundImage', 'url(../images/' + data[i].URI + ')')
                imgID = data[i].ImgID
                updateCaption(imgID)
                $('.avgRating').html('')
                $('.rating').css('display', 'flex');
            }
        })
}

//****** Visar slumpmässiga captions matchad till bilden
function updateCaption(n) {
    console.log(n)
    $.get('../php/get.php', {
            action: 'randCaption',
            imgID: n
        })
        .done(function(data) {
            data = JSON.parse(data)
            $('.caption').html('')
            for (let i = 0; i < data.length; i++) {
                let oneCaption = '"' + data[i].Text + '"'
                $('.caption').append(oneCaption)
                cID = data[i].cID
            }
        })
}

//****** Olika stjärnor ger olika parametrar till vote funktionen
$('#star1').click(function(event) {
    newRating(1, cID)
})
$('#star2').click(function(event) {
    newRating(2, cID)
})
$('#star3').click(function(event) {
    newRating(3, cID)
})
$('#star4').click(function(event) {
    newRating(4, cID)
})
$('#star5').click(function(event) {
    newRating(5, cID)
})

//****** Skickar ny röst till databasen
function newRating(n, cID) {
    $.get('../php/get.php', {
            action: 'newRating',
            rating: n,
            cID: cID
        })
        .done(function(data) {
        })
    avgRating(cID)
}
//****** Ger medel av alla rösterna på captionen
function avgRating(cID) {
    $.get('../php/get.php', {
            action: 'avgRating',
            cID: cID
        })
        .done(function(data) {
            data = JSON.parse(data)
            for (let i = 0; i < data.length; i++) {
                console.log(data)
                $('.avgRating').html("Avgerage rating: " + data[i].Average)
            }
        })
}

//****** Skickar bild till databas
$("form#formen").submit(function(event) {

    //disable the default form submission
    event.preventDefault();

    //grab all form data  
    var formData = new FormData($(this)[0]);

    $.ajax({
        url: '../php/upload.php',
        type: 'POST',
        data: formData,
        async: false,
        cache: false,
        contentType: false,
        processData: false,
        success: function(returndata) {
            alert(returndata);
        }
    });

    return false;
});


//****** En slumpmässig bild visas när man laddar in appen
updateImage()