<?= $header; ?>
<section class="main-content">
    <div class="container">
        <ul class="breadcrumb">
			<?php foreach ($breadcrumbs as $breadcrumb) : ?>
                <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
			<?php endforeach; ?>
        </ul>
        <div class="row">
			<?php $class = $column_left ? 'col-md-9' : 'col-md-12'; ?>
			<?php echo $column_left; ?>

            <div class="<?php echo $class; ?>">
                <div class="row">
                    <div class="col-md-8">
						<?php if ($thumb || $images) : ?>
                            <ul class="thumbnails">
								<?php if ($thumb) : ?>
                                    <li>
                                        <a class="thumbnail" href="<?php echo $popup; ?>"
                                           title="<?php echo $heading_title; ?>">
                                            <img src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>"
                                                 alt="<?php echo $heading_title; ?>"/>
                                        </a>
                                    </li>
								<?php endif; ?>
								<?php if ($images) : ?>
									<?php foreach ($images as $image) : ?>
                                        <li class="image-additional">
                                            <a class="thumbnail" href="<?php echo $image['popup']; ?>"
                                               title="<?php echo $heading_title; ?>">
                                                <img src="<?php echo $image['thumb']; ?>"
                                                     title="<?php echo $heading_title; ?>"
                                                     alt="<?php echo $heading_title; ?>"/>
                                            </a>
                                        </li>
									<?php endforeach; ?>
								<?php endif; ?>
                            </ul>
						<?php endif; ?>

                        <ul class="nav nav-tabs">
                            <li class="active"><a href="#tab-description"
                                                  data-toggle="tab"><?php echo $tab_description; ?></a></li>
							<?php if ($attribute_groups) { ?>
                                <li><a href="#tab-specification" data-toggle="tab"><?php echo $tab_attribute; ?></a>
                                </li>
							<?php } ?>
							<?php if ($review_status) { ?>
                                <li><a href="#tab-review" data-toggle="tab"><?php echo $tab_review; ?></a></li>
							<?php } ?>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane active" id="tab-description"><?php echo $description; ?></div>
							<?php if ($attribute_groups) { ?>
                                <div class="tab-pane" id="tab-specification">
                                    <table class="table table-bordered">
										<?php foreach ($attribute_groups as $attribute_group) { ?>
                                            <thead>
                                            <tr>
                                                <td colspan="2"><strong><?php echo $attribute_group['name']; ?></strong>
                                                </td>
                                            </tr>
                                            </thead>
                                            <tbody>
											<?php foreach ($attribute_group['attribute'] as $attribute) { ?>
                                                <tr>
                                                    <td><?php echo $attribute['name']; ?></td>
                                                    <td><?php echo $attribute['text']; ?></td>
                                                </tr>
											<?php } ?>
                                            </tbody>
										<?php } ?>
                                    </table>
                                </div>
							<?php } ?>
							<?php if ($review_status) { ?>
                                <div class="tab-pane" id="tab-review">
                                    <form class="form-horizontal" id="form-review">
                                        <div id="review"></div>
                                        <h2><?php echo $text_write; ?></h2>
										<?php if ($review_guest) { ?>
                                            <div class="form-group required">
                                                <div class="col-sm-12">
                                                    <label class="control-label"
                                                           for="input-name"><?php echo $entry_name; ?></label>
                                                    <input type="text" name="name" value="<?php echo $customer_name; ?>"
                                                           id="input-name" class="form-control"/>
                                                </div>
                                            </div>
                                            <div class="form-group required">
                                                <div class="col-sm-12">
                                                    <label class="control-label"
                                                           for="input-review"><?php echo $entry_review; ?></label>
                                                    <textarea name="text" rows="5" id="input-review"
                                                              class="form-control"></textarea>
                                                    <div class="help-block"><?php echo $text_note; ?></div>
                                                </div>
                                            </div>
                                            <div class="form-group required">
                                                <div class="col-sm-12">
                                                    <label class="control-label"><?php echo $entry_rating; ?></label>
                                                    &nbsp;&nbsp;&nbsp; <?php echo $entry_bad; ?>&nbsp;
                                                    <input type="radio" name="rating" value="1"/>
                                                    &nbsp;
                                                    <input type="radio" name="rating" value="2"/>
                                                    &nbsp;
                                                    <input type="radio" name="rating" value="3"/>
                                                    &nbsp;
                                                    <input type="radio" name="rating" value="4"/>
                                                    &nbsp;
                                                    <input type="radio" name="rating" value="5"/>
                                                    &nbsp;<?php echo $entry_good; ?></div>
                                            </div>
											<?php echo $captcha; ?>
                                            <div class="buttons clearfix">
                                                <div class="pull-right">
                                                    <button type="button" id="button-review"
                                                            data-loading-text="<?php echo $text_loading; ?>"
                                                            class="btn btn-primary"><?php echo $button_continue; ?></button>
                                                </div>
                                            </div>
										<?php } else { ?>
											<?php echo $text_login; ?>
										<?php } ?>
                                    </form>
                                </div>
							<?php } ?>
                        </div>
                        <div class="col-md-4">Right</div>
                    </div>
                </div>

            </div>
        </div>

</section>
<script>
	$(document).ready(function () {
		$('.thumbnails').magnificPopup({
			type: 'image',
			delegate: 'a',
			gallery: {
				enabled: true
			}
		});
	});
</script>
<?= $footer; ?>
