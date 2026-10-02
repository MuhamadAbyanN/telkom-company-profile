<?php
require_once 'config/database.php';

if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
    header('Location: contact.php');
    exit;
}

$nama = trim($_POST['nama'] ?? '');
$email = trim($_POST['email'] ?? '');
$pesan = trim($_POST['pesan'] ?? '');
$subjek = 'Pesan dari Form Kontak';

if ($nama === '' || $pesan === '' || !filter_var($email, FILTER_VALIDATE_EMAIL)) {
    exit('Data tidak valid. Silakan kembali dan periksa input.');
}

$stmt = $conn->prepare("INSERT INTO pesan (nama, email, subjek, pesan) VALUES (?, ?, ?, ?)");
$stmt->bind_param('ssss', $nama, $email, $subjek, $pesan);
$stmt->execute();

header('Location: contact.php?success=1');
exit;