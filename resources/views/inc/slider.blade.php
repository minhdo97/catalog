<div class="sliders">
    <div id="carouselHome" class="carousel carousel-light slide" data-bs-ride="carousel">
        <div class="carousel-indicators">
            @foreach($sliders as $keyBtn=>$sliderBtn)
                <button type="button" data-bs-target="#carouselHome" data-bs-slide-to="{{$keyBtn}}"
                        @if($keyBtn===0) class="active"
                        aria-current="true" @endif aria-label="Slide {{$keyBtn}}"></button>
            @endforeach
        </div>
        <div class="carousel-inner">
            @foreach($sliders as $key=>$slider)
                <div class="carousel-item @if($key===0) active @endif" data-bs-interval="5000">
                    <img src="{{imagePath($slider->picture)}}"
                         class="d-block w-100" alt="...">
                </div>
            @endforeach
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselHome"
                data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselHome"
                data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>
</div>

