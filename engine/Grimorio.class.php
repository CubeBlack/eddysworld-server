<?php
//require_once"engine2/Termianl.class.php";
class Grimorio{
	function __construct(){

	}
	function ouvir($texto=""){
		//localizar fraze no bd
		$texto = Dialogo::simplificar($texto);
		$com = Dialogo::getByEntrada($texto);
		//executar comados do retorno do da pesquisa
		if(!is_array($com)) {
			return $this->dizer("Não foi posivel entender($com)");
		};
		//bagunsa as respostas
		shuffle($com);
		if($com[0]["saida"] == "Empty!"){
			return $this->dizer("Não foi posivel entender(Empty!)");
		}
		$retorno = $this->fazer($com[0]["saida"]);
		return $retorno;
	}
	function fazer($com = ""){
		$vars = array(
			"user",
			"gameObject", "go",
			"inert",
			"world",
			"grimorio",
			"me"
		);
		$term = new Terminal2($vars,array(),true);
		$retorno = $term->chamada($com);
		return $retorno;
	}
	function dizer($texto="", $user = "Amanda"){
		return "$user - $texto";
	}
	function perceber(){
		global $me;
		$retorno = $me->status();
		$com = "";
		foreach($retorno as $key => $dado){
			$com .= "[$key=$dado]";
		}
		$retorno = Dialogo::getByEntrada($com);
		shuffle($retorno);
		if($retorno[0]["saida"] == "Empty!"){
			return $this->dizer("Não foi posivel entender(Empty!)");
		}
		$retorno = $this->fazer($retorno[0]["saida"]);
		
		return $retorno;
	}
	static function simplificar($str){
		//$str = mb_strtoupper($str,'UTF-8');
		$str = strtoupper($str);
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
}

