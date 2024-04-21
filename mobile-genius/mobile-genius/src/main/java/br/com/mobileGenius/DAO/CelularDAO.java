package br.com.mobileGenius.DAO;

import br.com.mobileGenius.Model.Celular;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class CelularDAO {

    // Gravar o celular no banco de dados
    public void createCelular(Celular celular) {

        String SQL = "INSERT INTO CELULAR (marca) VALUES (?)";

        try {

            Connection connection = DriverManager.getConnection("jdbc:h2:~/test", "sa", "sa");

            System.out.println("Sucesso ao entrar no banco de dados");

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            preparedStatement.setString(1, celular.getMarca());
            preparedStatement.execute();

            System.out.println("Sucesso ao criar no banco");

            connection.close();

        } catch (Exception e) {

            System.out.println("Erro ao entrar no banco de dados (Create)");

        }

    }

    // Listar todos os celulares do banco de dados
    public List<Celular> findCelular() {

        String SQL = "SELECT * FROM CELULAR";

        try {

            Connection connection = DriverManager.getConnection("jdbc:h2:~/test", "sa", "sa");

            System.out.println("SUCESSO AO ACESSAR O BANCO DE DADOS (select)");

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            ResultSet resultSet = preparedStatement.executeQuery();

            List<Celular> celulares = new ArrayList<>();

            while (resultSet.next()) {

                String marca = resultSet.getString("marca");
                String id = resultSet.getString("ID");

                Celular celular = new Celular(marca, id);

                celulares.add(celular);

            }

            System.out.println("SUCESSO AO SELECIONAR OS CELULARES");

            connection.close();

            return celulares;

        } catch (Exception e) {

            System.out.println("FALHA AO CONECTAR AO BANCO (Select)");

            return Collections.emptyList();

        }


    }

    // Deletando os celulares do banco de dados
    public void deleteCelularId(String celularId) {

        String SQL = "DELETE CELULAR WHERE ID = ?";

        try {

            Connection connection = DriverManager.getConnection("jdbc:h2:~/test", "sa", "sa");

            System.out.println("success in database connection");

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);
            preparedStatement.setString(1, celularId);
            preparedStatement.execute();

            System.out.println("success on delete celular with id: " + celularId);

            connection.close();

        } catch (Exception e) {

            System.out.println("fail in database connection");

        }

    }

    // Atualizando as informações do celular no banco de dados
    public void updateCelular(Celular celular) {

        String SQL = "UPDATE CELULAR SET marca = ? WHERE ID = ?";

        try {

            Connection connection = DriverManager.getConnection("jdbc:h2:~/test", "sa", "sa");

            System.out.println("Sucesso ao conectar no banco de dados e fazer o update");

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            preparedStatement.setString(1, celular.getMarca());
            preparedStatement.setString(2, celular.getId());
            preparedStatement.execute();

            System.out.println("Sucesso em atualizar o celular");

            connection.close();

        } catch (Exception e) {

            System.out.println("Falha na conexao do banco de dados");
            System.out.println("Error: " + e.getMessage());

        }
    }
}


