<div class="col-xs-6 col-md-12">
    <div class="widget">
        <h3><?php echo $heading_title; ?></h3>
        <ul>
            <?php foreach($categories as $category): ?>
                <li>
                    <a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
                    <?php if($category['children']): ?>
                        <ul class="subcat">
		                    <?php foreach($category['children'] as $child): ?>
                                <li> - <a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
		                    <?php endforeach; ?>
                        </ul>
                    <?php endif; ?>
                </li>
            <?php endforeach; ?>
        </ul>
    </div><!-- .widget -->
</div>
