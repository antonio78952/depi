using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text.RegularExpressions;

/// <summary>
/// Descripción breve de consultas
/// </summary>
public class consultas
{

    public string nombre_producto,descripcion,proveedor,tipo_prestamo,cadena;
    public DateTime fecha_salida, fecha_retorno, fecha_entrega;
    public int id_usuario,matricula,fallo,id_requisicion;
    public double precio, total;
    public int cantidad,id_proveedor;

    public void insertar_inventario()
    {
        try
        {
            
            conexion objeto = new conexion();
            objeto.abrir_conexion_mysql();
            objeto.cadena_comando_mysql = "INSERT INTO inventario (nombre, descripcion,cantidad,proveedores_id_proveedor) VALUES ('" + nombre_producto + "','" + descripcion + "','" + cantidad + "','" + id_proveedor + "');";
            objeto.aplicar_comando_mysql();
            objeto.cerrar_conexion_mysql();
          
            
        }
         
        catch
        {
 
        }
    }

    public void eliminar_producto_inventario()
    {
        try
        {
            conexion objeto = new conexion();
            objeto.abrir_conexion_mysql();
            objeto.cadena_comando_mysql = "";
            objeto.aplicar_comando_mysql();
            objeto.cerrar_conexion_mysql();

        }

        catch
        {

        }
    }

    public void insertar_usuario()
    {
        try
        {
            conexion objeto = new conexion();
            objeto.abrir_conexion_mysql();
            objeto.cadena_comando_mysql = "";
            objeto.aplicar_comando_mysql();
            objeto.cerrar_conexion_mysql();

        }

        catch
        {

        }
    }

    public void actualizar_datos_usuario()
    {
        try
        {
            conexion objeto = new conexion();
            objeto.abrir_conexion_mysql();
            objeto.cadena_comando_mysql = "";
            objeto.aplicar_comando_mysql();
            objeto.cerrar_conexion_mysql();

        }

        catch
        {

        }
    }

    public void eliminar_usuario()
    {
        try
        {
            conexion objeto = new conexion();
            objeto.abrir_conexion_mysql();
            objeto.cadena_comando_mysql = "";
            objeto.aplicar_comando_mysql();
            objeto.cerrar_conexion_mysql();

        }

        catch
        {

        }
    }

    public void desactivar_usuario()
    {
        try
        {
            conexion objeto = new conexion();
            objeto.abrir_conexion_mysql();
            objeto.cadena_comando_mysql = "";
            objeto.aplicar_comando_mysql();
            objeto.cerrar_conexion_mysql();

        }

        catch
        {

        }
    }

    public void nueva_requisicion()
    {
        try
        {
            conexion objeto = new conexion();
            objeto.abrir_conexion_mysql();
            objeto.cadena_comando_mysql = "INSERT INTO requisiciones (usuarios_id_usuario,fecha) VALUES ('"+id_usuario+"', '"+fecha_entrega+"')";
            objeto.aplicar_comando_mysql();
            objeto.cerrar_conexion_mysql();
        }

        catch
        {

        }
    }

    public void insertar_productos_requisicion()
    {
        try
        {
            conexion objeto = new conexion();
            objeto.abrir_conexion_mysql();
            objeto.cadena_comando_mysql = "INSERT INTO lista_productos_requisicion (requisiciones_id_requisicion, producto, descripcion, precio, cantidad, total) VALUES "+cadena+"";
            objeto.aplicar_comando_mysql();
            objeto.cerrar_conexion_mysql();
            fallo = 0;
        }
        catch
        {
            fallo = 1;
        }
    }

    public void insertar_productos_prestamo()
    {
        try
        {
            conexion objeto = new conexion();
            objeto.abrir_conexion_mysql();
            objeto.cadena_comando_mysql = "";
            objeto.aplicar_comando_mysql();
            objeto.cerrar_conexion_mysql();

        }

        catch
        {

        }
    }

    public void nuevo_prestamo()
    {
        try
        {
            conexion objeto = new conexion();
            objeto.abrir_conexion_mysql();
            objeto.cadena_comando_mysql = "INSERT INTO prestamos (fecha_salida, fecha_retorno, tipo_prestamo, usuarios_id_usuario) VALUES ('"+fecha_salida+"', '"+fecha_retorno+"', '"+tipo_prestamo+"', '"+id_usuario+"')";
            objeto.aplicar_comando_mysql();
            objeto.cerrar_conexion_mysql();
            fallo = 0;
        }

        catch
        {
            fallo = 1;
        }
    }

    public void extraer_id_usuario()
    {
        try
        {
            conexion objeto = new conexion();
            objeto.abrir_conexion_mysql();
            objeto.cadena_comando_mysql = "select id_usuario from usuarios where matricula = '"+matricula+"' ";
            objeto.aplicar_comando_mysql_extraccion();
            while (objeto.leer_comando.Read())
            {
                id_usuario = objeto.leer_comando.GetInt32(0);
            }
            objeto.cerrar_conexion_mysql_extraccion();
        }

        catch
        {

        }
    }

    public void nuevo_prestamo_foraneo()
    {
        try
        {
            conexion objeto = new conexion();
            objeto.abrir_conexion_mysql();
            objeto.cadena_comando_mysql = "";
            objeto.aplicar_comando_mysql();
            objeto.cerrar_conexion_mysql();

        }

        catch
        {

        }
    }

    public void lista_productos_prestamo_foraneo()
    {
        try
        {
            conexion objeto = new conexion();
            objeto.abrir_conexion_mysql();
            objeto.cadena_comando_mysql = "";
            objeto.aplicar_comando_mysql();
            objeto.cerrar_conexion_mysql();

        }

        catch
        {

        }
    }

    public void modificar_prestamo_foraneo()
    {
        try
        {
            conexion objeto = new conexion();
            objeto.abrir_conexion_mysql();
            objeto.cadena_comando_mysql = "";
            objeto.aplicar_comando_mysql();
            objeto.cerrar_conexion_mysql();

        }

        catch
        {

        }
    }

    public void extraer_id_proveedor()
    {
        try
        {
            conexion objeto = new conexion();
            objeto.abrir_conexion_mysql();
            objeto.cadena_comando_mysql = " select id_proveedor from proveedores where nombre = '" + proveedor + "' ";
            objeto.aplicar_comando_mysql_extraccion();
            while (objeto.leer_comando.Read())
            {
                id_proveedor = objeto.leer_comando.GetInt32(0);
            }
            objeto.cerrar_conexion_mysql_extraccion();
        }

        catch
        {

        }
    }
   
}