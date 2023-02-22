<?php
require_once('functions.php');
edit();
?>
<?php include(HEADER_TEMPLATE); ?>
    <h2>Atualizar Filme</h2>
    <form action="edit.php?id=<?php echo $filme['id']; ?>" method="post">
        <hr/>
        <div class="row">
            <div class="form-group col-md-4">
                <label for="titulo">Título</label>
                <input type="text" class="form-control" name="filme['titulo']"
                       value="<?php echo $filme['titulo']; ?>">
            </div>
            <div class="form-group col-md-8">
                <label for="descricao">Descrição</label>
                <input type="text" class="form-control" name="filme['descricao']"
                       value="<?php echo $filme['descricao']; ?>">
            </div>
        </div>
        <div class="row">
            <div class="form-group col-md-2">
                <label for="ano">Ano</label>
                <input type="text" class="form-control" name="filme['ano']"
                       value="<?php echo $filme['ano']; ?>">
            </div>
            <div class="form-group col-md-2">
                <label for="aluguel_duracao">Duração do aluguel</label>
                <input type="text" class="form-control" name="filme['aluguel_duracao']"
                       value="<?php echo $filme['aluguel_duracao']; ?>">
            </div>
            <div class="form-group col-md-2">
                <label for="aluguel_taxa">Taxa de aluguel</label>
                <input type="text" class="form-control" name="filme['aluguel_taxa']"
                       value="<?php echo $filme['aluguel_taxa']; ?>">
            </div>
            <div class="form-group col-md-2">
                <label for="duracao">Duração</label>
                <input type="text" class="form-control" name="filme['duracao']"
                       value="<?php echo $filme['duracao']; ?>">
            </div>
            <div class="form-group col-md-2">
                <label for="valor_reposicao">Valor de reposição</label>
                <input type="text" class="form-control" name="filme['valor_reposicao']"
                       value="<?php echo $filme['valor_reposicao']; ?>">
            </div>
            <div class="form-group col-md-2">
                <label for="classificacao">Classificação</label>
                <input type="text" class="form-control" name="filme['classificacao']"
                       value="<?php echo $filme['classificacao']; ?>">
            </div>
        </div>
        <div class="row">
            <div class="form-group col-md-12">
                <label for="caracteristicas">Características</label>
                <input type="text" class="form-control" name="filme['caracteristicas']"
                       value="<?php echo $filme['caracteristicas']; ?>">
            </div>
        </div>
        <div id="actions" class="row">
            <div class="col-md-12">
                <button type="submit" class="btn btn-primary">Salvar</button>
                <a href="index.php" class="btn btn-default">Cancelar</a>
            </div>
        </div>
    </form>
<?php include(FOOTER_TEMPLATE); ?>