<?php
//require_once"engine2/Termianl.class.php";
class Grimorio{
	function __construct(){

	}
	function ouvir($texto=""){
		//Caso se esteja tentando executar um comando
		if(strlen($texto)>2)
			if($texto[0] == "."){
				$texto = substr($texto,1);
				return $this->fazer($texto);
			}
		//Caso esteja respondendo algo
		//if() {
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
			"grimorio","gri",
			"me"
		);
		$term = new Terminal2($vars,array(),false);
		$retorno = $term->chamada($com);
		$str = "";
		if(is_array($retorno)){
			//verificar se o terminal retornou erro
			foreach($retorno as $ret){
				if(is_numeric($ret))
					$str .= " $ret ";
				else if(is_string($ret))
					$str .= $ret;
				else $str .= "[undefineted]";
			}
			$retorno = $str;
		}
		return $retorno;
	}
	function dizer($texto="", $user = "Amanda"){
		return "$texto";
	}
	function perceber(){
		global $me;
		$retorno = $me->status();
		$com = "";
		foreach($retorno as $key => $dado){
			$com .= "[$key=$dado]";
		}
		$retorno = Dialogo::getByEntrada($com);
		if(empty($retorno)) return $this->dizer("Não foi posivel entender(indefinido!)");
		shuffle($retorno);
		if($retorno[0]["saida"] == "Empty!"){
			return $this->dizer("Não foi posivel entender(Empty!)");
		}
		$retorno = $this->fazer($retorno[0]["saida"]);
		return $retorno;
	}
	function setWeit($index){
		//global $dbl;
		$dbl = new DataLocal();
		$weit = $this->getWeites();
		$weit[$index]=null;
		$dbl->insert("weit",$weit);
	}
	function setWeitValue($valor){
		//global $dbl;
		$dbl = new DataLocal();
		$weit = $this->getWeites();
		end($weit);//coloca a array no final
		$index = key($minhaArray);
		$weit[$index]=$valor;
		$dbl->insert("weit",$weit);
	}
	function getWeites(){
		global $dbl;
		if(!isset($dbl->data->weit)) return array();
		return (array)$dbl->data->weit;
	}
	function getWeited($index){
		global $dbl;
		if($dbl->data->weit->${$index}!==null) return null;
		return $dbl->data->weit->${$index};
	}
	function weiting($i) {
		//if
	}
	function setQuestion(){
		//$this.setWeit("question");
		return "";
	}
	function weitClear(){
		//$dbl = new DataLocal();
		//$weit = $this->getWeites();
		//$weit[$index]=null;
		//$dbl->insert("weit",array());
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

