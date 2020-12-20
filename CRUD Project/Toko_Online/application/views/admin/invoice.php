<div class="container-fluid">
    <h4>Invoice Pemesanan Produk</h4>
    <table class="table table-bordered table-hover table-striped">
        <tr>
            <th>Id Invoice</th>
            <th>Nama Pemesan</th>
            <th>Alamat Pengiriman</th>
            <th>Tanggal Pemesanan</th>
            <th>Batas Pembayaran</th>
            <th>Aksi</th>
        </tr>
        <?php foreach ($invoice as $inv) : ?>
        <tr>
            <th><?= $inv->id ?></th>
            <th><?= $inv->nama ?></th>
            <th><?= $inv->alamat ?></th>
            <th><?= $inv->tgl_pesan ?></th>
            <th><?= $inv->batas_bayar ?></th>
            <td>
                <?= anchor('admin/invoice/detail/' . $inv->id, ' <div class="btn btn-sm btn-primary">Detail</div>') ?>

            </td>
        </tr>
        <?php endforeach; ?>
    </table>
</div>