<section class="bottom-content">
	<div class="container">
		<div class="row">
			<div class="col-md-4">
				<h3>Get Discounts and Free Offers</h3>
				<h4>Get free coupens, discounts and new arivals</h4>
			</div>
			<div class="col-md-8">
				<form class="form-inline">
					<div class="row">
						<div class="form-group col-sm-4">
							<input type="text" name="name" class="form-control" placeholder="your full name">
						</div>
						<div class="form-group col-sm-4">
							<input type="email" name="email" class="form-control" placeholder="your email address">
						</div>
						<div class="form-group col-sm-4">
							<button type="submit" class="btn btn-default">Subscribe</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</section>

<footer>
	<div class="footer-menu">
		<div class="container">
			<div class="row">
				<div class="col-md-10">
					<div class="row">
						<div class="col-md-3 col-xs-6">
							<h5><?php echo $text_information; ?></h5>
							<ul>
								<?php foreach ($informations as $information) { ?>
                                    <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
								<?php } ?>
							</ul>
						</div>
						<div class="col-md-3 col-xs-6">
							<h5><?= $text_service; ?></h5>
							<ul>
                                <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
                                <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
                                <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
							</ul>
						</div>
						<div class="clearfix visible-xs-block visible-sm-block"></div>
						<div class="col-md-3 col-xs-6">
							<h5><?= $text_extra; ?></h5>
							<ul>
                                <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
                                <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
                                <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
                                <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
							</ul>
						</div>
						<div class="col-md-3 col-xs-6">
							<h5><?= $text_account; ?></h5>
							<ul>
                                <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
                                <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
                                <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
                                <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-md-2">
					<h5>Follow us</h5>
					<div class="social-icons">
						<a href="#"><img src="catalog/view/theme/styletour/img/fb.jpg" alt=""></a>
						<a href="#"><img src="catalog/view/theme/styletour/img/tw.jpg" alt=""></a>
						<a href="#"><img src="catalog/view/theme/styletour/img/fl.jpg" alt=""></a>
					</div>
				</div>
			</div>
		</div>
	</div><!-- /.footer-menu -->
	<div class="footer-copyright">
		<div class="container">
			<div class="row">
				<div class="col-md-4">
					<p>&copy; 2014 Fashion Store. All Rights Reserved.</p>
				</div>
				<div class="col-md-8 text-right pay">
					<a href="#"><img src="catalog/view/theme/styletour/img/pay1.jpg" alt=""></a>
					<a href="#"><img src="catalog/view/theme/styletour/img/pay2.jpg" alt=""></a>
					<a href="#"><img src="catalog/view/theme/styletour/img/pay3.jpg" alt=""></a>
					<a href="#"><img src="catalog/view/theme/styletour/img/pay4.jpg" alt=""></a>
					<a href="#"><img src="catalog/view/theme/styletour/img/pay5.jpg" alt=""></a>
					<a href="#"><img src="catalog/view/theme/styletour/img/pay6.jpg" alt=""></a>
					<a href="#"><img src="catalog/view/theme/styletour/img/pay7.jpg" alt=""></a>
					<a href="#"><img src="catalog/view/theme/styletour/img/pay8.jpg" alt=""></a>
				</div>
			</div>
		</div>
	</div><!-- /.footer-copyright -->
</footer>


</body>
</html>
