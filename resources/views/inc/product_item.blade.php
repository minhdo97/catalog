<div class="product_box">
    <div class="card">
        <div class="image-box">
            <a href="{{imagePath($product->picture)}}"
               class="lightgallery">
                <img class="w-100"
                     src="{{imagePath($product->thumbnail('square','picture'))}}"
                     alt="">
            </a>
        </div>
        <div class="title-box text-center">
            <div>
                <a class="" href="#"><h3>{{$product->name}}</h3></a>
            </div>
            <div class="divider-line"></div>
        </div>
    </div>
</div>
