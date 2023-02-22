<?php
require_once('functions.php');
view($_GET['id']);
?>
<?php include(HEADER_TEMPLATE); ?>
    <h2>Cliente <?php echo $filme['id']; ?></h2>
    <hr>
<?php if (!empty($_SESSION['message'])) : ?>
    <div class="alert alert-<?php echo $_SESSION['type']; ?>"><?php echo $_SESSION['message']; ?></div>
<?php endif; ?>
    <dl class="dl-horizontal">
        <dt>Título:</dt>
        <dd><?php echo $filme['titulo']; ?></dd>
        <dt>Descrição:</dt>
        <dd><?php echo $filme['descricao']; ?></dd>
        <dt>Ano:</dt>
        <dd><?php echo $filme['ano']; ?></dd>
    </dl>
    <dl class="dl-horizontal">
        <dt>Duração do aluguel:</dt>
        <dd><?php echo $filme['aluguel_duracao']; ?></dd>
        <dt>Taxa de aluguel:</dt>
        <dd><?php echo $filme['aluguel_taxa']; ?></dd>
        <dt>Duração:</dt>
        <dd><?php echo $filme['duracao']; ?></dd>
        <dt>Valor de reposição:</dt>
        <dd><?php echo $filme['valor_reposicao']; ?></dd>
    </dl>
    <dl class="dl-horizontal">
        <dt>Classificação:</dt>
        <dd><?php echo $filme['classificacao']; ?></dd>
        <dt>Características:</dt>
        <dd><?php echo $filme['caracteristicas']; ?></dd>
    </dl>
    <div id="actions" class="row">
        <div class="col-md-12">
            <a href="edit.php?id=<?php echo $filme['id']; ?>" class="btn btn-primary">Editar</a>
            <a href="index.php" class="btn btn-default">Voltar</a>
        </div>
    </div>
<?php include(FOOTER_TEMPLATE); ?>