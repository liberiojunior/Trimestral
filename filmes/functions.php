<?php
require_once('../config.php');
require_once(DBAPI);

$filmes = null;
$filme = null;

/**
 * Listagem de Filmes
 */
function index(){
    global $filmes;
    $filmes = find_all('filme');
}

/**
 * Cadastro de Filmes
 */
function add(){
    if (!empty($_POST['filme'])) {
        $filme = $_POST['filme'];
        save('filme', $filme);
        header('location: index.php');
    }
}

/**
 * Edição de Filmes
 */
function edit(){

    if (isset($_GET['id'])) {
        $id = $_GET['id'];
        if (isset($_POST['filme'])) {
            $filme = $_POST['filme'];
            update('filme', $id, $filme);
            header('location: index.php');
        }else{
            global $filme;
            $filme = find('filme', $id);
        }
    }else{
        header('location: index.php');
    }
}

/**
 * Visualização de um Filme
 */
function view($id = null){
    global $filme;
    $filme = find('filme', $id);
}

/**
 * Exclusão de um Filme
 */
function delete($id = null){
    global $filme;
    $filme = remove('filme', $id);
    header('location: index.php');
}

/**
 * Limpar alerta
 */
function clear_messages(){
    unset($_SESSION['message']);
    unset($_SESSION['type']);
}
