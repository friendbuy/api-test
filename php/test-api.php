<?php
$curl = curl_init();

$url = "https://api-tls11.friendbuy.com";

curl_setopt($curl, CURLOPT_SSLVERSION, 1.0);
curl_setopt($curl, CURLOPT_URL, $url);
curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);

$result = curl_exec($curl);
echo $result;

curl_close($curl);
?>