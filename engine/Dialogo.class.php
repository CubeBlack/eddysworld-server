<?php
//require_once"engine2/Termianl.class.php";
class Dialogo{
	function __construct(){

	}
	public function getByTitle($title,$rTipo = "arr"){
		//echo "|$rTipo|";
		$retorno = Dialogo::getByEntrada($title);
		if($rTipo == "json")
			$retorno = json_encode($retorno);
		return $retorno;
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
			//var_dump($retorno);
			return Dialogo::novo($str);
			//Retorar saida de dialogo inesesetente
		}
		return $retorno;
	}
	static function getById($id){
		global $db;
		$retorno = $db->tableSelect(Database::dialogoTb,"WHERE id='$id'")[0];
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
			//var_dump($retorno);
			return Dialogo::novo($str);
			//Retorar saida de dialogo inesesetente
		}
		return $retorno;
	}
	function listar($criterio="",$rTipo="arr"){
		global $db;
		$query = "SELECT DISTINCT entrada, count(*), sum(uso) from ew_dialogo group by entrada, uso order by sum(uso) desc;";
		//$retorno = $db->tableSelect(Database::dialogoTb,"");
		
		$retorno = $db->mePDO->query($query)->fetchAll();
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
		$query = "REPLACE INTO `$table` VALUES($id,'$entrada','$retorno',$personagem)";

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
	static function addUso($id){
		global $db;
		$dialogo = Dialogo::getById($id);
		$aUso = $dialogo["uso"];
		$aUso++;
		$query = "update `ew_dialogo` set `uso`='$aUso' where `id`='$id' limit 1";
		$db->mePDO->query($query);
	}
}

