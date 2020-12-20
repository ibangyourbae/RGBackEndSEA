<div class="container-fluid">
    <div class="row">
        <div class="col-md-2"></div>
        <div class="col-md-8">
            <div class="btn btn-sm btn-success">
                <?php $grand_total = 0;
                if ($keranjang = $this->cart->contents()) {
                    foreach ($keranjang as $item) {
                        $grand_total += $item['subtotal'];
                    }
                    echo "Total Belanja Anda : Rp. " . number_format($grand_total, 0, ',', '.');
                ?>
            </div>
            <br><br>
            <h3>Input Alamat Pengiriman dan Pembayaran</h3>
            <form action="<?php echo base_url() ?>dashboard/proses_pesanan" method="post">
                <div class="form-group">
                    <label>Nama Lengkap</label>
                    <input type="text" name="nama" placeholder="Nama Lengkap Anda" class="form-control">
                </div>
                <div class="form-group">
                    <label>Alamat Lengkap</label>
                    <input type="text" name="alamat" placeholder="Alamat Lengkap Anda" class="form-control">
                </div>
                <div class="form-group">
                    <label>No. Telepon</label>
                    <input type="text" name="no_telp" placeholder="Nomor Telepon Anda" class="form-control">
                </div>
                <div class="form-group">
                    <label>Jasa Pengiriman</label>
                    <select name="" id="" class="form-control">
                        <option value="">JNE</option>
                        <option value="">TIKI</option>
                        <option value="">POS Indonesia</option>
                        <option value="">JNT</option>
                        <option value="">E-mail</option>
                    </select>
                </div>
                <div class="form-group">
                    <label>Pilih Metode Pembayaran</label>
                    <select name="" id="" class="form-control">
                        <option value="">Mandiri - 1340016340472</option>
                        <option value="">BTPN - 90210054531</option>
                        <option value="">Permata - 09836255043</option>
                        <option value="">OVO - 087834332582</option>
                        <option value="">Link Aja - 087834332582</option>
                        <option value="">DANA - 087834332582</option>
                        <option value="">GOPAY - 087834332582</option>
                    </select>
                </div>
                <button type="submit" class="btn btn-sm btn-primary mb-3">Pesan</button>
            </form>
            <?php } else {
                    echo "<h4>Keranjang Belanja Anda Masih Kosong !</h4>";
                } ?>
        </div><br><br>

        <div class="col-md-2"></div>
    </div>
</div>