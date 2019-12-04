<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title><?php echo $title; ?></title>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:700,400,300&subset=latin,cyrillic' rel='stylesheet'
          type='text/css'>
    <link href="catalog/view/theme/styletour/css/bootstrap.min.css" rel="stylesheet">

    <script src="catalog/view/theme/styletour/js/modernizr.custom.17475.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="catalog/view/theme/styletour/js/bootstrap.min.js"></script>

	<?php foreach ($links as $link): ?>
        <link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel'] ?>">
	<?php endforeach; ?>

	<?php foreach ($styles as $style): ?>
        <link href="<?php echo $style['href']; ?>" rel="<?php echo $style['rel'] ?>">
	<?php endforeach; ?>

	<?php foreach ($scripts as $script): ?>
        <script src="<?php echo $script; ?>"></script>
	<?php endforeach; ?>

    <link href="catalog/view/theme/styletour/css/style.css" rel="stylesheet">

    <script src="catalog/view/theme/styletour/js/common.js"></script>
    <script src="catalog/view/theme/styletour/js/scripts.js"></script>

    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>

<header>
    <div class="menu-top">
        <nav class="navbar navbar-default">
            <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#menu-top"
                            aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="menu-top">
                    <ul class="nav navbar-nav">
                        <li><a href="#">Support</a></li>
                        <li><a href="#">Free Shipping Over $50</a></li>
                        <li><a href="#">Articles</a></li>
						<?php echo $language; ?>
						<?php echo $currency; ?>
                    </ul>

                    <ul class="nav navbar-nav navbar-right">
						<?php if ($logged): ?>
                            <li class="dropdown">
                                <a href="<?= $account; ?>" class="dropdown-toggle"
                                   data-toggle="dropdown"><?= $text_account; ?><span
                                            class="carret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="<?php echo $account; ?>"><?= $text_account; ?></a></li>
                                    <li><a href="<?php echo $order; ?>"><?= $text_order; ?></a></li>
                                    <li><a href="<?php echo $transaction; ?>"><?= $text_transaction; ?></a></li>
                                    <li><a href="<?php echo $account; ?>"><?= $text_account; ?></a></li>
                                    <li><a href="<?php echo $logout; ?>"><?= $text_logout; ?></a></li>
                                </ul>
                            </li>
						<?php else: ?>
                            <li><a href="<?php echo $login; ?>">Login</a></li>
                            <li><a href="<?php echo $register; ?>">Signup</a></li>
						<?php endif; ?>

						<?php echo $cart; ?>
                    </ul>
                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>
    </div><!-- /.menu-top -->
    <div class="main-menu-wrap">
        <div class="main-menu">
            <nav class="navbar navbar-inverse">
                <div class="container">
                    <div class="main-menu-bg">
                        <!-- Brand and toggle get grouped for better mobile display -->
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                                    data-target="#main-menu" aria-expanded="false">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                            <a class="navbar-brand" href="<?php echo $home; ?>">
                                <img src="<?php echo $logo; ?>" alt="StyleTour">
                                <span><?php echo $name; ?></span>
                            </a>
                        </div>

                        <!-- Collect the nav links, forms, and other content for toggling -->
                        <div class="collapse navbar-collapse" id="main-menu">
                            <ul class="nav navbar-nav">
								<?php foreach ($categories as $category): ?>
									<?php if ($category['children']): ?>
                                        <li class="dropdown">
                                            <a href="<?php echo $category['children'] ?>" class="dropdown-toggle"
                                               data-toggle="dropdown"><?php echo $category['name']; ?><span
                                                        class="carret"></span></a>
                                            <ul class="dropdown-menu">
												<?php foreach ($category['children'] as $child): ?>
                                                    <li>
                                                        <a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a>
                                                    </li>
												<?php endforeach; ?>
                                            </ul>
                                        </li>
									<?php else: ?>
                                        <li>
                                            <a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
                                        </li>
									<?php endif; ?>
								<?php endforeach; ?>
                            </ul>

                            <div class="nav navbar-nav navbar-right">
                                <form class="navbar-form navbar-left" role="search" method="get" action="">
                                    <div class="input-group">
                                        <input type="text" class="form-control" placeholder="Search">
                                        <span class="input-group-btn">
												<button type="submit" class="btn btn-default" name="go"><i
                                                            class="glyphicon glyphicon-search"></i></button>
											</span>
                                    </div>
                                </form>
                            </div>
                        </div><!-- /.navbar-collapse -->
                        <i class="search glyphicon glyphicon-search"></i>
                    </div><!-- /.main-menu-bg -->
                </div><!-- /.container -->
            </nav>
        </div><!-- /.main-menu -->
    </div><!-- /.main-menu-wrap -->
</header>

<section class="menu-carousel">
    <div id="carousel" class="carousel fade" data-ride="carousel">
        <!-- Indicators -->
        <div class="carousel-indicators-wrap">
            <ol class="carousel-indicators">
                <li data-target="#carousel" data-slide-to="0" class="active"></li>
                <li data-target="#carousel" data-slide-to="1"></li>
                <li data-target="#carousel" data-slide-to="2"></li>
                <li data-target="#carousel" data-slide-to="3"></li>
            </ol>
        </div><!-- /.carousel-indicators-wrap -->

        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <!-- <img src="catalog/view/theme/styletour/img/slider.jpg" alt=""> -->
                <div class="bgslide" style="background-image: url(catalog/view/theme/styletour/img/slider.jpg);"></div>
                <div class="container">
                    <div class="carousel-caption">
                        <h1>Women's Apparel</h1>
                        <h3>T-Shirts, Dress Shirts, Tanks, Pants and More...</h3>
                        <a href="#" class="btn-red">Shop Women’s Apparel</a>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="bgslide" style="background-image: url(catalog/view/theme/styletour/img/slider.jpg);"></div>
                <div class="container">
                    <div class="carousel-caption">
                        <h1>Women's Apparel 2</h1>
                        <h3>T-Shirts, Dress Shirts, Tanks, Pants and More...</h3>
                        <a href="#" class="btn-red">Shop Women’s Apparel</a>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="bgslide" style="background-image: url(catalog/view/theme/styletour/img/slider.jpg);"></div>
                <div class="container">
                    <div class="carousel-caption">
                        <h1>Women's Apparel 3</h1>
                        <h3>T-Shirts, Dress Shirts, Tanks, Pants and More...</h3>
                        <a href="#" class="btn-red">Shop Women’s Apparel</a>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="bgslide" style="background-image: url(catalog/view/theme/styletour/img/slider.jpg);"></div>
                <div class="container">
                    <div class="carousel-caption">
                        <h1>Women's Apparel 4</h1>
                        <h3>T-Shirts, Dress Shirts, Tanks, Pants and More...</h3>
                        <a href="#" class="btn-red">Shop Women’s Apparel</a>
                    </div>
                </div>
            </div>
        </div>

        <!-- Controls -->
        <a class="left carousel-control" href="#carousel" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#carousel" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
</section>

<section class="main-slogan">
    <div class="container">
        <h1>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor</h1>
    </div>
</section>
