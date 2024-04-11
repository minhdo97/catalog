<?php

namespace App\Admin\Controllers;

use App\Models\Product;
use App\Http\Controllers\Controller;
use App\Models\ProductCategory;
use Encore\Admin\Controllers\HasResourceActions;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Content;
use Encore\Admin\Show;

class ProductController extends Controller
{
    use HasResourceActions;

    /**
     * Index interface.
     *
     * @param Content $content
     * @return Content
     */
    public function index(Content $content)
    {
        return $content
            ->header(trans('admin.index'))
            ->description(trans('admin.description'))
            ->body($this->grid());
    }

    /**
     * Show interface.
     *
     * @param mixed $id
     * @param Content $content
     * @return Content
     */
    public function show($id, Content $content)
    {
        return $content
            ->header(trans('admin.detail'))
            ->description(trans('admin.description'))
            ->body($this->detail($id));
    }

    /**
     * Edit interface.
     *
     * @param mixed $id
     * @param Content $content
     * @return Content
     */
    public function edit($id, Content $content)
    {
        return $content
            ->header(trans('admin.edit'))
            ->description(trans('admin.description'))
            ->body($this->form()->edit($id));
    }

    /**
     * Create interface.
     *
     * @param Content $content
     * @return Content
     */
    public function create(Content $content)
    {
        return $content
            ->header(trans('admin.create'))
            ->description(trans('admin.description'))
            ->body($this->form());
    }

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Product);
        $grid->model()->latest();
        $grid->id('ID');
        $grid->name('name');
        $grid->slug('slug');
//        $grid->body('body');
        $grid->column('category.name', 'Loại sản phẩm');
        $grid->column('picture', 'Hình ảnh')->image();

        $states = [
            'on' => ['value' => 1, 'text' => 'Có', 'color' => 'success'],
            'off' => ['value' => 0, 'text' => 'Không', 'color' => 'danger'],
        ];

        $grid->column('hot_sell', 'Nổi bật')->switch($states);

        $grid->created_at(trans('admin.created_at'));
        $grid->updated_at(trans('admin.updated_at'));

        return $grid;
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     * @return Show
     */
    protected function detail($id)
    {
        $show = new Show(Product::findOrFail($id));

        $show->id('ID');
        $show->name('name');
        $show->slug('slug');
        $show->desciption('desciption');
        $show->body('body');
        $show->picture('picture');
//        $show->pictures('pictures');
        $show->created_at(trans('admin.created_at'));
        $show->updated_at(trans('admin.updated_at'));

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Product);

        $form->display('ID');
        $form->text('name', 'name');
        $states = [
            'on' => ['value' => 1, 'text' => 'Có', 'color' => 'success'],
            'off' => ['value' => 0, 'text' => 'Không', 'color' => 'danger'],
        ];

        $form->switch('hot_sell', "Nổi bật")->states($states);
        $form->textarea('desciption', 'desciption');
        $form->ckeditor('body', 'body');
        $form->image('picture', trans('admin.picture'))->removable()->thumbnail('square', $width = 500, $height = 500);
//        $form->multipleImage('pictures', trans('admin.pictures'));
        $form->select("product_category_id", "Loại sản phẩm")->options(ProductCategory::all()->pluck('name', 'id')->toArray())->required();
        $form->display(trans('admin.created_at'));
        $form->display(trans('admin.updated_at'));

        return $form;
    }
}
