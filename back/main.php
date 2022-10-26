<?php
    include 'conexao.php';

    include 'index.html';

    $pesquisar = $comando->query("select * from tbl_emprego");
    $total_registros = $listar->rowCount();

    if ($total_registros > 0) {
        echo "<center>";

        echo "<table style = 'border: 2px solid #1a1a1a'>";

        echo "<tr style = 'border: 2px solid #1a1a1a'>
        <th colspan=4 style = 'border: 2px solid #1a1a1a text-align: center'> Dados Cadastrados </th></tr>";
        
        echo "<tr style = 'border: 2px solid #1a1a1a'>
            <th colspan=4 style = 'border: 2px solid #1a1a1a; text-align: center;'> Código </th>
            <th colspan=4 style = 'border: 2px solid #1a1a1a; text-align: center;'> Nome </th>
            <th colspan=4 style = 'border: 2px solid #1a1a1a; text-align: center;'> Senha </th>
            <th colspan=4 style = 'border: 2px solid #1a1a1a; text-align: center;'> Sexo </th>
        </tr>";

    }

    else {
        echo "<script src=''></script>";
    }

    echo "<br/><br/>";

    echo "<center>";
    echo "<table>";

    while ($listar = $pesquisar->fetch(PDO::FETCH_ASSOC)) {
        $codigo = $listar['id_'];
        $nome = $listar['nm_'];
        $cargo = $listar['cargo_'];
        $area = $listar['area_'];

        echo "<tr style = 'border: 2px solid #1a1a1a align-items: center'>
            <th colspan=4 style = 'border: 2px solid #1a1a1a; align-items: center;'> $codigo </th>
            <th colspan=4 style = 'border: 2px solid #1a1a1a; align-items: center;'> $nome </th>
            <th colspan=4 style = 'border: 2px solid #1a1a1a; align-items: center;'> $senha </th>
            <th colspan=4 style = 'border: 2px solid #1a1a1a; align-items: center;'> $sexo </th>
        </tr>";
    }

    echo "</table>";
    echo "</center>";

    echo "<form>";
    echo "<input type='button' value='VOLTAR AO MENU' onClick = 'window.history.back()'/>";
    echo "</form>";
?>