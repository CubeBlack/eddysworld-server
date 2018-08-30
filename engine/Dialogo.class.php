<?php
//require_once"engine2/Termianl.class.php";
class Dialogo{
	function __construct(){

	}
	static function getByEntrada($str){
		global $db;
		 //array_rand()
		$retorno = $db->tableSelect(Database::dialogoTb,"WHERE entrada='$str'");
		return $retorno;
	}
	function listar($criterio="",$rTipo=""){
		global $db;
		$retorno = $db->tableSelect(Database::dialogoTb,"");
		if($rTipo = "json"){
			$retorno = json_encode($retorno);
		}
		return $retorno;
	}
	function novo($entrada, $saida = 'Empty!', $personagem = 0){
		global $db;
		$dados=array(null,Grimorio::simplificar($entrada),$saida,$personagem);
		$id = $db->tableInsert(Database::dialogoTb,$dados);
		return $id;
	}
	//eModo, he o tipo de entrada: json/array
	static function replace($id,$entrada,$retorno,$personagem, $eModo = "json"){
		global $db;
		$entrada = Grimorio::simplificar($entrada);
		$table = Database::dialogoTb;
		echo $query = "REPLACE INTO `$table` VALUES($id,'$entrada','$retorno',$personagem)";

		$db->mePDO->query($query);
	}
	function drop(){
		//desnecesario
	}
	static function simplificar($str){
		$str = mb_strtoupper($str,'UTF-8');
		$map = array(
			'Á' => 'A',
			'À' => 'A',
			'Ã' => 'A',
			'Â' => 'A',
			'É' => 'E',
			'Ê' => 'E',
			'Í' => 'I',
			'Ó' => 'O',
			'Ô' => 'O',
			'Õ' => 'O',
			'Ú' => 'U',
			'Ü' => 'U',
			'Ç' => 'C',
		);
		 
		$str = strtr($str, $map); // funciona corretamente
		return $str;
	}
	function addUso(){
		//
	}
}

