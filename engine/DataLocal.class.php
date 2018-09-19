<?php
	class DataLocal{
		function __construct(){
			if(!isset($_SESSION))
				session_start();
			//var_dump($_SESSION);
			if(isset($_SESSION["DataLocal"])){
				//$this->get();
			}
			else{
				$_SESSION["DataLocal"] = json_encode(array());
			}
		}
		function insert($valueName, $value){
			$data = $this->get();
			$data[$valueName] = $value;
			$dblJson = json_encode($data);
			$_SESSION["DataLocal"] = $dblJson;
			return $data;
		}
		function get($index=""){
			$dblStr = "";
			$dblStr = $_SESSION["DataLocal"];
			$data = (array) json_decode($dblStr);
			//var_dump($data);
			return $data;
		}
		function clear(){
			return session_destroy();
			
		}
	}
	
