<%@ page language="java" contentType="text/html; charset=UTF-8" pageEnconding="UTF-8" %>
<%@ taglib url="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8" />
        <title>Jogos</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <div class="container">
        <h1>Jogos</h1>
            <a href="/plataforma/insert" class="btn btin-primary"> Nova Plataforma</a>
            <table class="table">
                <tr>
                    <th>Id</th>
                    <th>Titulo</th>
                    <th>Categorias</th>
                    <th>Plataformas</th>
                    <th>&nbsp;</th>
                </tr>
                <c:forEach var="item" items="${jogos}">
                    <tr>
                        <td>${item.id}</td>
                        <td>${itm.titulo}</td>
                        <td>${itm.categoria.nome}</td>
                        <td>
                            <c:forEach var="p" varStatus="s" items ="${item.plataformas}">
                                ${s.getCount() > 1 ? ", " : ""}
                                ${p.nome}
                            </c:forEach>
                        </td>
                        <td>
                            <a href="/jogo/update?id=${item.id}" class="btn btn-waring">Editar</a>
                            <a href="/jogo/delete?id=${item.id}" class="btn btn-waring">Editar</a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </body>
</html>