<div class="cate_group_2">
    <h3>
        <a href="#" class="cat-title">{{$category->name}}</a>
    </h3>
    <div class="card">
        <div class="image-box">
            <img class="w-100"
                 src="{{imagePath($category->thumbnail('square','picture'))}}"
                 alt="">
        </div>
    </div>
</div>
