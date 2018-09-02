<?php
class Personagem extends GameObject{
	function __construct($id=0){
		$this->id=$id;
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
		//$retorno=$this->statusT();
		if($this->id!=0) $retorno["logued"] = "false";
			else $retorno["logued"] = "true";
		return $retorno;
	}
	public function statusT(){
		global $dbl;
		//return $bdl->data["per0"];
	}
	public function getById($id){

	}
	public function setStatusF(){
		
	}
	public function setStatusT($chave,$valor){
		global $bdl;
		$aStatus = $this->statusT();
		$aStatus[$chave]=$valor;
		//$dbl->insert("per0",$aStatus);
	}
}
