<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Belajar extends CI_Controller
{
    public function index()
    {
        $nilai1=4;
        $nilai2=6;

        $tambah = $nilai1 + $nilai2;

        echo "<br>";
        echo "OPERATOR <br>";
        echo "Hasil dari $nilai1 + $nilai2 = ", $tambah;
    }
}

    {
        $nim = "19220701";
        $nama = "sss";
        $kelas = "19.3A.04";
        $prodi = "Sistem Informasi";
        echo "NIM = $nim <br>";
        echo "NAMA = $nama <br>";
        echo "KELAS = $kelas <br>";
        echo "PRODI = $prodi <br>";
    }

