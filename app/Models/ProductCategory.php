<?php

namespace App\Models;

use Cviebrock\EloquentSluggable\Sluggable;
use Encore\Admin\Traits\Resizable;
use Illuminate\Database\Eloquent\Model;

class ProductCategory extends Model
{
    use Sluggable, Resizable;

    protected $table = 'product_categories';
    protected $appends = [
        'src', 'title'
    ];
    protected $withCount = ['products'];

    /**
     * Return the sluggable configuration array for this model.
     *
     * @return array
     */
    public function sluggable(): array
    {
        return [
            'slug' => [
                'source' => 'name'
            ]
        ];
    }

    public function products()
    {
        return $this->hasMany(Product::class, 'product_category_id');
    }

    public function getSrcAttribute($picture)
    {
        return imagePath($this->picture);
    }

    public function getTitleAttribute()
    {
        return $this->attributes['name'];
    }
}
