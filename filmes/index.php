<?php
require_once('functions.php');
index();
?>
<?php include(HEADER_TEMPLATE); ?>
<header>
    <div class="row">
        <div class="col-sm-6">
            <h2>Filmes</h2>
        </div>
        <div class="col-sm-6 text-right h2">
            <a class="btn btn-primary" href="add.php"><i class="fa fa-plus"></i> Novo Filme</a>
            <a class="btn btn-default" href="index.php"><i class="fa fa-refresh"></i> Atualizar</a>
        </div>
    </div>
</header>
<?php if (isset($_SESSION['message']) && isset($_SESSION['type'])) : ?>
    <div class="alert alert-<?php echo $_SESSION['type']; ?> alert-dismissible" role="alert">
        <?php echo $_SESSION['message']; ?>
    </div>
    <?php clear_messages(); ?>
<?php endif; ?>
<hr>
<table class="table table-hover">
    <thead>
    <tr>
        <th>ID</th>
        <th width="20%">Título</th>
        <th width="30%">Descrição</th>
        <th width="20%">Características</th>
        <th>Opções</th>
    </tr>
    </thead>
    <tbody>
    <?php if ($filmes) : ?>
    <?php foreach ($filmes as $filme) : ?>
    <tr>
        <td><?php echo $filme['id']; ?></td>
        <td><?php echo $filme['titulo']; ?></td>
        <td><?php echo $filme['descricao']; ?></td>
        <td><?php echo $filme['caracteristicas']; ?></td>
        <td class="actions text-right">
            <a href="view.php?id=<?php echo $filme['id']; ?>" class="btn btn-sm btn-success">
                <i class="fa fa-eye"></i> Visualizar</a>
            <a href="edit.php?id=<?php echo $filme['id']; ?>" class="btn btn-sm btn-warning">
                <i class="fa fa-pencil"></i> Editar</a>
            <a href="delete.php?id=<?php echo $filme['id']; ?>" class="btn btn-sm btn-danger">
                <i class="fa fa-trash"></i> Excluir</a>
        </td>
    </tr>
        <?php endforeach; ?>
    <?php else : ?>
        <tr>
            <td colspan="6">Nenhum registro encontrado.</td>
        </tr>
    <?php endif; ?>
    </tbody>
</table>
<?php include(FOOTER_TEMPLATE); ?>