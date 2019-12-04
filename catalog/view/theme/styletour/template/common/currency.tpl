<?php if (count($currencies) > 1) { ?>
    <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
			<?php foreach ($currencies as $currency): ?>
				<?php if ($currency['symbol_left'] && $currency['code'] == $code) { ?>
					<?= $text_currency; ?>: <?php echo $currency['symbol_left']; ?> <span class="caret"></span>
				<?php } elseif ($currency['symbol_right'] && $currency['code'] == $code) { ?>
					<?= $text_currency; ?>: <?php echo $currency['symbol_right']; ?> <span class="caret"></span>
				<?php } ?>
			<?php endforeach; ?>
        </a>
        <ul class="dropdown-menu">
            <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-currency">
				<?php foreach ($currencies as $currency): ?>
					<?php if ($currency['symbol_left']) { ?>
                        <li>
                            <a name="<?php echo $currency['code']; ?>" href="<?php echo $currency['code']; ?>">
								<?= $currency['title']; ?>: <?php echo $currency['symbol_left']; ?>
                            </a>
                        </li>
					<?php } elseif ($currency['symbol_right']) { ?>
                        <li>
                            <a name="<?php echo $currency['code']; ?>" href="<?php echo $currency['code']; ?>">
								<?= $currency['title']; ?>: <?php echo $currency['symbol_right']; ?>
                            </a>
                        </li>
					<?php } ?>
				<?php endforeach; ?>
                <input type="hidden" name="code" value=""/>
                <input type="hidden" name="redirect" value="<?php echo $redirect; ?>"/>
            </form>
        </ul>
    </li>
<?php } ?>
