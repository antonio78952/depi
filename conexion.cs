using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;

/// <summary>
/// Descripción breve de conexion
/// </summary>
public class conexion
{
    consultas consulta = new consultas();
    public string cadena_conexion, cadena_comando_mysql;
    public MySqlConnection conexionn;
    public MySqlCommand comando_mysql;
    public MySqlDataReader leer_comando;
    bool result;
    public void abrir_conexion_mysql()
    {
        cadena_conexion = "Server=localhost;Database=depi;Uid=root;Pwd=al309437";
        conexionn = new MySqlConnection(cadena_conexion);
        conexionn.Open();
    }
    public void aplicar_comando_mysql()
    {
        comando_mysql = new MySqlCommand(cadena_comando_mysql, conexionn);
        comando_mysql.Prepare();
        if (comando_mysql.ExecuteNonQuery() > 0)
        {
            result = true;
        }
        else
        {
            result = false;
        }
        //    if (result == true)
        //   {
        //  }
    }
    public void cerrar_conexion_mysql()
    {
        conexionn.Close();
    }
    public void cerrar_conexion_mysql_extraccion()
    {
        leer_comando.Close();
        conexionn.Close();
    }
    public void aplicar_comando_mysql_extraccion()
    {
        comando_mysql = new MySqlCommand(cadena_comando_mysql, conexionn);
        //Int32 count=(Int32) comando_mysql.ex
        leer_comando = comando_mysql.ExecuteReader();
    }

}