@php
$categories = App\Models\Category::orderBy('category_name_en','ASC')->get();
@endphp
<div class="side-menu animate-dropdown outer-bottom-xs">
    <div class="head"><i class="icon fa fa-align-justify fa-fw"></i> Categories</div>
    <nav class="yamm megamenu-horizontal" role="navigation">
        <ul class="nav">
           @foreach ($categories as $category)
                <li class="dropdown menu-item">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon {{ $category->category_icon }}" aria-hidden="true"></i> @if (session()->get('language') == 'bangla') {{ $category->category_name_bn }} @else {{ $category->category_name_en }} @endif</a>
                    <ul class="dropdown-menu mega-menu">
                        <li class="yamm-content">
                            <div class="row">
                                @php
                                $sucategories = App\Models\Subcategory::where('category_id',$category->id)->orderBy('subcategory_name_en','ASC')->get();
                                @endphp
                                @foreach ($sucategories as $subcat)
                                        <div class="col-sm-12 col-md-3">
                                            @if (session()->get('language') == 'bangla')
                                            <a href="{{ url('subcategory/product/'.$subcat->id.'/'.$subcat->subcategory_slug_bn) }}">
                                                <h2 class="title">{{ $subcat->subcategory_name_bn }}</h2>
                                            </a>
                                        @else
                                            <a href="{{ url('subcategory/product/'.$subcat->id.'/'.$subcat->subcategory_slug_en) }}">
                                                <h2 class="title">{{ $subcat->subcategory_name_en }}</h2>
                                            </a>
                                         @endif
                                            <ul class="links list-unstyled">
                                                @php
                                                 $subsucategories = App\Models\SubsubCategory::where('subcategory_id',$subcat->id)->orderBy('subsubcategory_name_en','ASC')->get();
                                                @endphp
                                                @foreach ($subsucategories as $subsubcat)
                                                <li>
                                                    @if (session()->get('language') == 'bangla')
                                                <a href="{{ url('sub/subcategory/product/'.$subsubcat->id.'/'.$subsubcat->subsubcategory_slug_bn) }}">{{ $subsubcat->subsubcategory_name_bn }}</a>
                                                @else
                                                 <a href="{{ url('sub/subcategory/product/'.$subsubcat->id.'/'.$subsubcat->subsubcategory_slug_en) }}">{{ $subsubcat->subsubcategory_name_en }}</a>
                                                 @endif
                                                </li>
                                                @endforeach
                                            </ul>
                                        </div><!-- /.col -->
                                @endforeach
                            </div><!-- /.row -->
                        </li><!-- /.yamm-content -->
                    </ul><!-- /.dropdown-menu -->
                </li><!-- /.menu-item -->
            @endforeach
        </ul><!-- /.nav -->
    </nav><!-- /.megamenu-horizontal -->
</div><!-- /.side-menu -->
