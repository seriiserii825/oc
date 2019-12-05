<div class="content">
    <h3><?php echo $heading_title; ?></h3>

    <div class="products-row clearfix">
        <?php foreach($products as $product): ?>
            <div class="col-sm-4">
                <div class="product">
                    <div class="product-img">
                        <a href="<?php echo $product['href']; ?>">
                            <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>">
                        </a>
                    </div>
                    <p class="product-title">
                        <a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
                    </p>
                    <p class="product-desc"><?php echo $product['description']; ?></p>
                    <div class="product-buy">
                        <p class="product-price">
                            Price: <?php echo $product['price']; ?>
                        </p>

<!--                        <a href="#" class="btn btn-default">Add to cart</a>-->
                        <button class="btn btn-default" type="button" onclick="cart.add('<?php echo $product['product_id']; ?>');">Add to cart</button>
                    </div>
                </div><!-- /.product -->
            </div><!-- .col-sm-4 -->
        <?php endforeach; ?>
    </div><!-- .products-row -->
</div> <!-- /.content -->

