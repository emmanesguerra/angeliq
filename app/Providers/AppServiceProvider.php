<?php

namespace App\Providers;

use App\AECore\Model\User;
use App\AECore\Model\SystemConfig;
use App\AECore\Model\Module;
use App\AECore\Model\Page;
use App\AECore\Model\Panel;
use App\AECore\Model\ContactUs;
use App\AECore\Observers\UserObserver;
use App\AECore\Observers\SystemConfigObserver;
use App\AECore\Observers\ModuleObserver;
use App\AECore\Observers\PageObserver;
use App\AECore\Observers\ContactUsObserver;
use App\AECore\Observers\PanelObserver;
use App\Model\Slider;
use App\Observers\SliderObserver;
use App\Model\ProductCategory;
use App\Observers\ProductCategoryObserver;
use App\Model\Product;
use App\Observers\ProductObserver;
use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Schema;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        Schema::defaultStringLength(191);
        User::observe(UserObserver::class);
        SystemConfig::observe(SystemConfigObserver::class);
        Module::observe(ModuleObserver::class);
        Page::observe(PageObserver::class);
        Panel::observe(PanelObserver::class);
        ContactUs::observe(ContactUsObserver::class);
        
        Slider::observe(SliderObserver::class);
        Product::observe(ProductObserver::class);
        ProductCategory::observe(ProductCategoryObserver::class);
    }

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }
}
