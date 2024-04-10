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
                breakpoint: 1024,
                settings: {
                    slidesToShow: 4,
                    slidesToScroll: 4,
                    infinite: true,
                    dots: true
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
        speed: 500, adaptiveHeight: true,
        slidesToShow: 4, arrows: false,
        slidesToScroll: 4,
        // centerPadding: "50px",
        // centerMode: true,
        responsive: [
            {
                breakpoint: 1024,
                settings: {
                    slidesToShow: 6,
                    slidesToScroll: 6,
                    // infinite: true,
                    // dots: true
                }
            },
            {
                breakpoint: 600,
                settings: {
                    slidesToShow: 5,
                    slidesToScroll: 5
                }
            },
            {
                breakpoint: 480,
                settings: {
                    slidesToShow: 4,
                    slidesToScroll: 4
                }
            }
        ]
    });

    // // slick light gallery
    // $('.slick').lightGallery({
    //     selector: '.slick-slide:not(.slick-cloned) .lightgallery',
    // });
    lightGallery(document.getElementById('lightgallery'), {
        selector: '.lightgallery',
    })
    lightGallery(document.getElementById('lightgallery1'), {
        selector: '.lightgallery',
    })

});


