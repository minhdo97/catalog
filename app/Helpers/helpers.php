<?php
function imagePath($path): string
{
    return file_exists(public_path("storage/" . $path)) ? asset("storage/" . $path) : asset("assets/images/sample.png");
}
