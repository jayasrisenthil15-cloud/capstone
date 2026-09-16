package com.jayasrimart.listener;

import com.jayasrimart.util.DBUtil;
import jakarta.servlet.ServletContextEvent;
import jakarta.servlet.ServletContextListener;
import jakarta.servlet.annotation.WebListener;

import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.BufferedReader;
import java.sql.Connection;
import java.sql.Statement;

@WebListener
public class DatabaseInitializerListener implements ServletContextListener {

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        try (Connection conn = DBUtil.getConnection();
             Statement stmt = conn.createStatement()) {

            InputStream is = getClass().getClassLoader().getResourceAsStream("schema.sql");
            if (is != null) {
                BufferedReader reader = new BufferedReader(new InputStreamReader(is));
                StringBuilder sql = new StringBuilder();
                String line;
                while ((line = reader.readLine()) != null) {
                    sql.append(line).append("\n");
                }
                stmt.execute(sql.toString());
                System.out.println("Database Tables Created Successfully!");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}