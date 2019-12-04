<section class="menu-carousel">
    <div id="carousel" class="carousel fade" data-ride="carousel">
        <!-- Indicators -->
        <div class="carousel-indicators-wrap">
            <ol class="carousel-indicators">
				<?php for ($i = 0; $i < count($banners); $i++): ?>
                    <li data-target="#carousel"
                        data-slide-to="<?php echo $i; ?>" <?php if ($i === 0) echo 'class=" active"'; ?>></li>
				<?php endfor; ?>
            </ol>
        </div><!-- /.carousel-indicators-wrap -->

        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">
			<?php $i = 0; foreach ($banners as $banner): ?>
                <div class="item <?php if($i === 0) echo ' active'; ?>" >
                    <div class="bgslide" style="background-image: url(<?php echo $banner['image']; ?>);"></div>
                    <div class="container">
                        <div class="carousel-caption">
                            <h3><?php echo $banner['title']; ?></h3>
                            <?php if($banner['link']): ?>
                                <a href="<?php echo $banner['link'] ?>" class="btn-red"><?php echo $banner['title']; ?></a>
                            <?php endif; ?>
                        </div>
                    </div>
                </div>
			<?php $i++; endforeach; ?>
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

