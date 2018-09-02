<?php
//require_once"engine2/Termianl.class.php";
class Dialogo{
	function __construct(){

	}
	static function getByEntrada($str){
		global $db;
		 //array_rand()
		
		$str = Dialogo::simplificar($str);
		//if($str) == ;
		$retorno = $db->tableSelect(Database::dialogoTb,"WHERE entrada='$str'");
		if(!empty($retorno)){
			Dialogo::addUso($retorno[0]["id"]);
		}
		else{
			var_dump($retorno);
			return Dialogo::novo($str);
			//Retorar saida de dialogo inesesetente
		}
		return $retorno;
	}
	static function getByEntradaLike($str){
		global $db;
		 //array_rand()
		
		$str = Dialogo::simplificar($str);
		//if($str) == ;
		$retorno = $db->tableSelect(Database::dialogoTb,"WHERE entrada like'%$str%'");
		if(!empty($retorno)){
			Dialogo::addUso($retorno[0]["id"]);
		}
		else{
			var_dump($retorno);
			return Dialogo::novo($str);
			//Retorar saida de dialogo inesesetente
		}
		return $retorno;
	}
	function listar($criterio="",$rTipo="arr"){
		global $db;
		$retorno = $db->tableSelect(Database::dialogoTb,"");
		//var_dump($retorno);
		if($rTipo=="json") return json_encode($retorno);
		return $retorno;
	}
	function novo($entrada, $saida = 'Empty!', $personagem = "0"){
		global $db;
		$entrada = Dialogo::simplificar($entrada);
		if($saida==""||$saida==null) $saida = 'Empty!';
		$dados=array(null,$entrada,$saida,$personagem,0);
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
			'\'' => "`"
		);
		 
		$str = strtr($str, $map); // funciona corretamente
		return $str;
	}
	function addUso(){
		//
	}
}

