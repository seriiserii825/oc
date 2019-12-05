<?php echo $header; ?>

<?php echo $content_top; ?>

<section class="main-content">
	<div class="container">
		<div class="row">
            <?php $class = $column_left ? 'col-md-9' : 'col-md-12'; ?>
			<?php echo $column_left; ?>

			<div class="<?php echo $class; ?>">
				<div class="row">
                    <?php echo $content_bottom; ?>
				</div>
			</div>

		</div>
	</div>
</section>

<?php echo $footer; ?>

