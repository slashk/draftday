<?php
$sCookie = "B=fm81hdma1eakk; Y=v=1&n=4t90ciibh0ajb&l=af4ffb440hj7b8dad4j/o&p=m242spo4903f02&r=0u&lg=us&intl=us; T=z=99164A9DL74Abx5B039Ze8uNgY1Mjc2NTE1MTM-&a=AAE&sk=DAA1d.AqrcQYq6&d=c2wBTVFFeU5UQXhNall5TmpRLQFhAUFBRQF6egE5OTE2NEFnV0E- ";
$count=0;
$sPlayerList = "";
do {
	$sPlayerRaw="";
	$ch = curl_init ("http://baseball.fantasysports.yahoo.com/b1/2860/players?status=A&pos=P&cut_type=33&stat1=S_S_2006&sort=AR&count=$count");
	curl_setopt ($ch, CURLOPT_HEADER, 0);
	curl_setopt ($ch, CURLOPT_COOKIE, $sCookie);
	curl_setopt ($ch, CURLOPT_RETURNTRANSFER, 1);
	$sPlayerPage = curl_exec ($ch);
	curl_close ($ch);
	$aPlayerPage = explode("<table ", $sPlayerPage);
		foreach($aPlayerPage as $sTable) {
		if (strpos($sTable, "O-Rank") > 0) 
			$sPlayerRaw = $sPlayerRaw . "<table " . trim($sTable);
		}
	$sPlayerRaw = substr($sPlayerRaw, 0, strpos($sPlayerRaw, "/table>")+7);
	$aDelTag = array ("div", "hr", "p", "em", "font", "small", "b", "img", "thead", "tbody", "table");
	$sPlayerRaw = eregi_replace("<tr[^>]+>","<tr>" ,$sPlayerRaw);
	foreach ($aDelTag as $sTag) $sPlayerRaw =eregi_replace("</?".$sTag."[^>]*>","" ,$sPlayerRaw);
	$sPlayerRaw = eregi_replace("[\t\n\r]","" ,$sPlayerRaw);
	$sPlayerRaw = eregi_replace("<tr><th.+</th></tr>","" ,$sPlayerRaw);
	$sPlayerRaw = eregi_replace("<td class=\"owner\">[^<]+</td>","" ,$sPlayerRaw);
	$sPlayerRaw = eregi_replace("<td class=\"opp wide\">[^<]+</td>","" ,$sPlayerRaw);
	$sPlayerRaw = eregi_replace("<td[^>]+>","<td>" ,$sPlayerRaw);
	$sPlayerRaw = eregi_replace("<td><a href=\"/b1/2860/[^<]+</a></td>","" ,$sPlayerRaw);
	$sPlayerRaw = eregi_replace("</span> +<a href=[^>]+news+[^>]+></a>","</span>" ,$sPlayerRaw);
	$sPlayerRaw = eregi_replace(" *<span>\(","</td><td>" ,$sPlayerRaw);
	$sPlayerRaw = eregi_replace(")</span> *</td>","</td>" ,$sPlayerRaw);
	$sPlayerRaw = eregi_replace(" +- +","</td><td>" ,$sPlayerRaw);
	$sPlayerRaw = eregi_replace("<a href=\"http://sports.yahoo.com/mlb/players/","" ,$sPlayerRaw);
	$sPlayerRaw = eregi_replace("\" target=\"sports\" class=\"name\">","</td><td>" ,$sPlayerRaw);
        $sPlayerRaw = eregi_replace("\)\</span\>\ \<span\ class\=\"status\"\>NA\</span\>\ ","",$sPlayerRaw);
	$sPlayerRaw = str_replace("<td>-</td>", "<td></td>", $sPlayerRaw);
	$sPlayerRaw = str_replace("</a>","" , $sPlayerRaw);
	$sPlayerRaw = str_replace("<tr><td>", "('", $sPlayerRaw);
	$sPlayerRaw = str_replace("</td><td>", "','", $sPlayerRaw);
	$sPlayerRaw = str_replace("</td></tr>", "'),\n", $sPlayerRaw);
	
	$lenData = strpos($sPlayerRaw, "match the filter");
	if ($lenData > 0) {
		break;
	} else {
		$sPlayerList .= $sPlayerRaw;
		$count = $count+25;
	}
} while (1);
$sPlayerList = substr(trim($sPlayerList), 0, strlen(trim($sPlayerList))-1);
$sSQL = "INSERT INTO mlb06_pitchers (ID,Player,Team,Pos,ORank,Rank,IP,W,SV,K,ERA,WHIP) VALUES\n";
$sSQL = $sSQL . $sPlayerList;
echo $sSQL;
echo ";\n";
//write the  sql file
//	$fp = fopen("/home/pivo/www/sandbox/07pitchers.sql", "w");
	//fwrite ($fp, $sSQL);
	//fclose($fp);
?>
