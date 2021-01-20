<?php
$hwidTypes = array("Syn-Fingerprint", "Exploit-Guid", "Proto-User-Identifier", "Sentinel-Fingerprint");

$database = array(
	array(
		"key" => "key_sentinel",
		"hwid" => "",
	),
	array(
		"key" => "key_sirhurt",
		"hwid" => ""
	),
	array(
		"key" => "key_protosmasher",
		"hwid" => ""
	),
	array(
		"key" => "key_synapse",
		"hwid" => "034dc0d21912acf471a9d5293241cb0581dcd441f0d29d8f06a38cb4a81610e4467c6e6f4ecef77a1fb89b64c0fd3f4712c0e2be252f0cfcfe3075187fdc5ccf"
	),
);

function fetch_hwid($headers) {
	global $hwidTypes;

	$hwid = NULL;
	$count = 0;
	
	foreach($hwidTypes as $key => $header) {
		if (isset($headers[$header])) {
			$count = $count + 1;
			$hwid = $headers[$header];
		};
	}

	if ($count > 1) {

		$hwid = NULL;
	}

	return $hwid;	
}

if (isset($_GET["key"])) {
	$hwid = fetch_hwid(getallheaders());
	if (!is_null($hwid)) {
		$didUserPass = FALSE;
		$errorMsg = "authentication failed";
		$key = $_GET["key"];

		foreach($database as $_ => $user) {
			$stored_key = $user["key"];
			$stored_hwid = $user["hwid"];
			$key_matches = ($stored_key == $key);
			$hwid_matches = ($stored_hwid == $hwid);

			if ($key_matches and $hwid_matches) {
				$didUserPass = TRUE;

				echo(hash("sha256", $stored_key));
			} elseif ($key_matches and !$hwid_matches) {

				$errorMsg = "hwid mismatch";
			}
		}

		if (!$didUserPass) {
			echo($errorMsg);
		};
	} else {
		die("no hwid supplied");
	}
} else {
	die("invalid key");
}

?>