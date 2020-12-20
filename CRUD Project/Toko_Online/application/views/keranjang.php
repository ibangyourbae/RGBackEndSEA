<div class="container-fluid">
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="<?php echo base_url('assets/img/slider1.png') ?>" class="d-block w-100" alt="...">
        </div>
        <div class="carousel-item">
            <img src="<?php echo base_url('assets/img/slider2.png') ?>" class="d-block w-100" alt="...">
        </div>
    </div>
    <h4>Keranjang Belanja</h4>
    <table class="table table-bordered table-striped table-hover center">
        <tr>
            <th>NO</th>
            <th>Nama Produk</th>
            <th>Jumlah</th>
            <th>Harga</th>
            <th>Sub-Total</th>
        </tr>
        <?php $no = 1;
        foreach ($this->cart->contents() as $items) : ?>
        <tr>
            <td><?= $no++ ?></td>
            <td><?= $items['name'] ?></td>
            <td><?= $items['qty'] ?></td>
            <td align="right">Rp. <?= number_format($items['price'], 0, ',', '.') ?></td>
            <td align="right">Rp. <?= number_format($items['subtotal'], 0, ',', '.') ?></td>
        </tr>

        <?php endforeach ?>
        <tr>
            <td colspan="4"></td>
            <td align="right">Rp. <?= number_format($this->cart->total(), 0, ',', '.') ?></td>
        </tr>
    </table>
    <div align="right">
        <a href="<?php echo base_url('dashboard/hapus_keranjang') ?>">
            <div class="btn btn-sm btn-danger">Hapus Keranjang</div>
        </a>
        <a href="<?php echo base_url() ?>">
            <div class="btn btn-sm btn-primary">Lanjutkan Belanja</div>
        </a>
        <a href="<?php echo base_url('dashboard/pembayaran') ?>">
            <div class="btn btn-sm btn-success">Pembayaran</div>
        </a>
        <br>
        <br>
        <br>
        <br>
        <br>
    </div>
</div>