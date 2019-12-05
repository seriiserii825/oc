<?php

function get_short_text_clear( $content, $count ) {
	$short_text = $content;

	return mb_substr( $short_text, 0, $count );
}

function clear_phone( $phone ) {
	return str_replace( [ '(', ')', '-', '+', ' ' ], '', $phone );
}

function vardump( $var ) {
	echo '<pre>';
	var_dump( $var );
	echo '</pre>';
}
