// A $( document ).ready() block.
$(document).ready(function () {
    $('#bestsellers_slick').slick({
        dots: false,
        infinite: false,
        speed: 500, arrows: false,
        slidesToShow: 4,
        slidesToScroll: 4, adaptiveHeight: true,
        centerPadding: "50px",
        // centerMode: true,
        responsive: [
            {
                breakpoint: 1300,
                settings: {
                    slidesToShow: 5,
                    slidesToScroll: 5,

                }
            },
            {
                breakpoint: 1024,
                settings: {
                    slidesToShow: 4,
                    slidesToScroll: 4,
                }
            },
            {
                breakpoint: 600,
                settings: {
                    slidesToShow: 3,
                    slidesToScroll: 3
                }
            },
            {
                breakpoint: 480,
                settings: {
                    slidesToShow: 2,
                    slidesToScroll: 2
                }
            }
        ]
    });

    $('.categories_slick').slick({
        dots: true,
        infinite: false,
        speed: 500,
        adaptiveHeight: true,
        slidesToShow: 6,
        arrows: false,
        slidesToScroll: 4,
        responsive: [
            {
                breakpoint: 1300,
                settings: {
                    slidesToShow: 8,
                    slidesToScroll: 4,
                }
            },
            {
                breakpoint: 1024,
                settings: {
                    slidesToShow: 6,
                    slidesToScroll: 4,
                }
            },
            {
                breakpoint: 600,
                settings: {
                    slidesToShow: 4,
                    slidesToScroll: 3
                }
            },
            {
                breakpoint: 480,
                settings: {
                    slidesToShow: 3,
                    slidesToScroll: 2
                }
            }
        ]
    });

    lightGallery(document.getElementById('lightgallery'), {
        selector: '.lightgallery',
    })
    lightGallery(document.getElementById('lightgallery1'), {
        selector: '.lightgallery',
    })

});


