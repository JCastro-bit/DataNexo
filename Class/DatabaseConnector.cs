using System;
using System.Configuration;
using System.Data;
using MySql.Data.MySqlClient;

public class DatabaseConnector
{
    private string _connectionString;

    public DatabaseConnector()
    {
        _connectionString = ConfigurationManager.ConnectionStrings["MySqlConnection"].ConnectionString;
    }

    // Método para ejecutar consultas que no devuelven resultados (INSERT, UPDATE, DELETE)
    public int ExecuteNonQuery(string query)
    {
        using (MySqlConnection connection = new MySqlConnection(_connectionString))
        {
            connection.Open();
            using (MySqlCommand command = new MySqlCommand(query, connection))
            {
                int affectedRows = command.ExecuteNonQuery();
                return affectedRows;
            }
        }
    }

    // Método para ejecutar consultas que devuelven un conjunto de resultados (SELECT)
    public DataTable ExecuteQuery(string query)
    {
        using (MySqlConnection connection = new MySqlConnection(_connectionString))
        {
            connection.Open();
            using (MySqlCommand command = new MySqlCommand(query, connection))
            {
                DataTable dataTable = new DataTable();
                using (MySqlDataAdapter adapter = new MySqlDataAdapter(command))
                {
                    adapter.Fill(dataTable);
                }
                return dataTable;
            }
        }
    }
}
