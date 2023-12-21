package miPaquete;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mysql.cj.jdbc.result.ResultSetMetaData;

/**
 * Clase de prueba de conexión con una base de datos MySQL
 */
public class Conexion {

	public String driver="com.mysql.cj.jdbc.Driver";
	
	public Connection getConnection() throws ClassNotFoundException
	{
	Connection miConexion =null;
    try
        {
    	    System.out.println("JT30 - En conexion - Antes de Class.forName(driver); ");
    	    
    		Class.forName(driver);
    		
    		System.out.println("JT31 - En conexion - Antes de conexion= DriverManager.getConnection ");
    		
    		miConexion= DriverManager.getConnection (
                "jdbc:mysql://localhost:3306/proyectofinalcac","root", "");
    		
    		System.out.println("JT32 - En conexion  -DESPUES de conexion= DriverManager.getConnection ");
        }
     catch (SQLException e)
        {
    	 System.out.println("En conexion catch");
    	 System.out.println(e);
        }    
     
    System.out.println("En conexion antes del return");
    return miConexion;     
    }     

	// Verifico funcione la conexión y traigo una fila de prueba
    public static void main(String[] args) throws ClassNotFoundException, SQLException 
    {
       Conexion   con        = new Conexion();
       Connection miConexion = con.getConnection();
       
       PreparedStatement ps;
       ResultSet         rs;
       
       ps = miConexion.prepareStatement("Select * from tickets limit 1");
       rs = ps.executeQuery();
       
       // Veo la Metadata del ResultSet
       ResultSetMetaData rsmd = (ResultSetMetaData) rs.getMetaData();
       int nCols              = rsmd.getColumnCount();
       System.out.println("Número de Columnas:"+nCols);
  
       // Se recorre el ResultSet, mostrando por consola los resultados.
       while (rs.next()) {
	       	System.out.println("----");
	     
	       	String fila="";
	       	for (int i = 1; i <= nCols; i++) {
					fila += rs.getString(i) + " ";
				}
	       	System.out.println("Fila:"+fila+"\n");
	        System.out.println("Campos:");
	       	
	        for (int i = 1; i <= nCols; i++) {
				System.out.println("   " + i + "   " + 
									rsmd.getColumnName(i)     + " ("   + 
						            rsmd.getColumnTypeName(i) + 
						            (rsmd.isAutoIncrement(i) ? " - Auto Increment" : "") + 
						            (rsmd.isNullable(i) == 1 ? " - null ": "") +
						            "): " + 	
									rs.getString(i));
			}

	        for (int i = 1; i <= nCols; i++) {
				System.out.println("private " + 
						            rsmd.getColumnClassName(i).substring(10)  +  "   " +
						            rsmd.getColumnName(i) + " ;" );
			}	        
	        
	        
       }   
    
       miConexion.close();    
    }
    
}

   
