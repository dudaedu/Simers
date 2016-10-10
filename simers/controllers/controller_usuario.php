<?php

	require 'model/config.php'; 
	require 'model/database.php';


		
// Executar Busca

	function DBRead($table, $params = null, $fields = '*'){
		$table 	= DB_PREFIX.'_'.$table;
		$params = ($params) ? " {$params}" : null;
		
		$query 	= "SELECT {$fields} FROM {$table}{$params}";
		$result	= DBExecute($query);
		
		if(!mysqli_num_rows($result))
			return false;
		else {
			while ($res = mysqli_fetch_assoc($result)){
				$data[] = $res;
			}
			
			return $data;
		}
	}

	
	// Executa Querys
	function DBExecute($query, $insertId = false){
		$link 	= DBConnect();
		$result = @mysqli_query($link, $query) or die(mysqli_error($link));
		
		if($insertId)
			$result = mysqli_insert_id($link);
		
		DBClose($link);
		return $result;
	}
?>
