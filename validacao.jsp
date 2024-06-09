<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8" />
        <title>Formulário Enviado</title>
    </head>

    <body>
        <h1>Formulário Enviado com Sucesso!</h1>
        <p>Obrigado por contribuir com sua doação.</p>
        <p>
            Agora é só aguardar nossa equipe ir retirar as roupas, no prazo de até 10
            dias úteis.
        </p>
        <a href="index.html">Página Inicial</a>
    </body>

    </html>
    <%@ page import="java.sql.*" %>
<%
    // Obtenha os dados do formulário
    String tipo = request.getParameter("tipo");
    String tamanho = request.getParameter("tamanho");
    String estado = request.getParameter("estado");
    String endereco = request.getParameter("descricao");

    // Conecte-se ao banco de dados
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/DoacoesDB", "root", "");

    // Insira os dados no banco de dados
    String sql = "INSERT INTO DoacoesDB (TipoDeRoupa, Tamanho, EstadoDeConservacao, Endereco) VALUES (?, ?, ?, ?)";
    PreparedStatement ps = con.prepareStatement(sql);
    ps.setString(1, tipo);
    ps.setString(2, tamanho);
    ps.setString(3, estado);
    ps.setString(4, endereco);
    ps.executeUpdate();

    // Feche a conexão
    con.close();
%>
