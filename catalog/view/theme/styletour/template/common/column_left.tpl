<?php if($modules): ?>
<div class="col-md-3">
	<div class="sidebar">
		<div class="row">
            <?php foreach($modules as $module){echo $module;} ?>
        </div>
    </div>
</div>
<?php endif; ?>
