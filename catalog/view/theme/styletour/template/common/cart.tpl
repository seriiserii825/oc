<li>
    <a href="#" class="btn btn-red" data-toggle="modal" data-target="#exampleModal">
        <span class="glyphicon glyphicon-shopping-cart"></span>
        <span id="js-cart-info" class="cart-info"><?php echo $text_items; ?></span>
    </a>
</li>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="table-responsive">
                    <table class="table table-striped">
						<?php $sum = 0; ?>
                        <thead>
                        <tr>
                            <th>Изображение</th>
                            <th>Наименование</th>
                            <th>Кол-во</th>
                            <th>Цена</th>
                            <th>Итого</th>
                            <th>Удалить</th>
                        </tr>
                        </thead>
                        <tbody>
						<?php foreach ($products as $product): ?>
							<?php $sum_clear = str_replace(' ', '', $product['total']); ?>
							<?php
							$pos = strpos($sum_clear, ".");
							$sum_num = (int)substr($sum_clear, 0, $pos);
							$sum += $sum_num;
							?>
                            <tr>
                                <td><a href="<?php echo $product['href']; ?>"><img
                                                src="<?php echo $product['thumb']; ?>"
                                                alt="<?php echo $product['name']; ?>"></a></td>
                                <td><?php echo $product['name']; ?></td>
                                <td><?php echo $product['quantity']; ?></td>
                                <td><?php echo $product['price']; ?></td>
                                <td><?php echo $product['total']; ?></td>
                                <td>
                                    <button class="btn btn-red"
                                            onclick="cart.remove('<?php echo $product['cart_id']; ?>');">Remove
                                    </button>
                                </td>
                            </tr>
						<?php endforeach; ?>
                        </tbody>
                        <tfoot>
                        <tr>
                            <td>Общая цена:</td>
                            <td><?php echo $sum; ?></td>
                        </tr>
                        </tfoot>
                    </table>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Продолжить покупки</button>
                <a href="<?php echo $cart; ?>" type="button" class="btn btn-primary"><?php echo $text_cart; ?></a>
            </div>
        </div>
    </div>
</div>
