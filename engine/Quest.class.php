<?php
	class Quest{
		function __construct(){
				
		}
		function listar($query="",$rTipo="arr"){
			global $db;
			$retorno = $db->tableSelect("ew_quests","");
			if($rTipo=="json") $retorno = json_encode($retorno);
			return $retorno;
		}
		function adicionar(){
			global $db;
			$dados=array("null",$x,$y,$heigth,$width,$tipo);
			$id = $db->tableInsert("ew_quests",$dados);
			return $id;
		}
		function getById($id) {
			global $db;
			$retorno = $db->tableSelect("ew_quests","where `id` = '$id'");
			return $retorno[0];
		}
}
