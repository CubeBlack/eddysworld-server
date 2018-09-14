<?php
function __autoload($className){
  $url = "engine/$className.class.php";
  require_once $url;
}
// variaveis globais
$config = new Config();
$dbl = new DataLocal();
$db = new Database ();
$user = new User();
$go = $gameObject = new GameObject();
$inert = new Inert();
$world = new World();
$dialogo = new Dialogo();
$forum = new Forum();
$grimorio = new Grimorio();
$me = new Personagem($user->personagem);
$quest = new Quest();

// Help
$help = " --- Ajuda ---
Variaveis Globais(Objetos):
	* config
	* user
	* gameObject/go
	* inert
	* db
	* world

obs.: Para obter ajuda de uma determinada variavel basta utilizar a funcao `help`
	Exemplo: `user.help()`
";
//$grimorio = new Grimorio();
$vars = array(
	"help",
	"config",
	"user",
	"gameObject", "go",
	"dialogo",
	"forum",
	"inert",
	"db",
	"dbl",
	"world",
	"grimorio",
	"me",
	"term",
	"quest"
);
//$term = New Terminal($vars);
$term = New Terminal2($vars,true);
