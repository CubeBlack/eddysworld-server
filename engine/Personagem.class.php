<?php
class Personagem extends GameObject{
	function __construct($id=0){
		$this->id=$id;
		$this->status=array();
		if($id!=0){
			$objPer = $this->getById($id);
			
			
		}
		else{
			$this->id = 0;
			$this->name = "none";
			$this->life = 100;
			$this->magi = 100;
			$this->stamina = 100;
		}

	}
	public function status(){
		global $dbl;
		$retorno = array();
		$retorno=$this->statusT();
		//var_dump($retorno);
		if($this->id != 0){ 
			$retorno["logued"] = "true";
		}
		else 
			$retorno["logued"] = "false";
		

		return $retorno;
	}
	public function statusT($rTipo = ""){
		global $dbl;
		//$dbl = new DataLocal();
		//$retono = $dbl
		//var_dump($dbl->data->per0);
		if(!isset($dbl->data->per)) return array();
		return (array)$dbl->data->per->status;
	}
	public function getById($id){

	}
	public function setStatusF(){
		
	}
	public function setStatusT($chave,$valor){
		//global $dbl;
		$dbl = new DataLocal();
		$this->status = $this->statusT();
		$this->status[$chave]=$valor;
		$dbl->insert("per",$this);
		//var_dump($bdl);
		//$dbl->insert("per0","jurema");
		//retonar nada, para não aparescer na resposta
		return "";
	}
}
