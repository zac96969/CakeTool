/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controllers;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.*;
import java.net.HttpURLConnection;
import java.net.URL;

public class ChatServlet extends HttpServlet {

    private static final String API_KEY = "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";

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String message = request.getParameter("message");

        URL url = new URL("https://api.openai.com/v1/chat/completions");
        HttpURLConnection conn = (HttpURLConnection) url.openConnection();

        conn.setRequestMethod("POST");
        conn.setRequestProperty("Authorization", "Bearer " + API_KEY);
        conn.setRequestProperty("Content-Type", "application/json");
        conn.setDoOutput(true);

        String json = "{"
                + "\"model\":\"gpt-4o-mini\","
                + "\"messages\":["
                + "{\"role\":\"system\",\"content\":\"Bạn là trợ lý bán hàng, trả lời ngắn gọn\"},"
                + "{\"role\":\"user\",\"content\":\"" + message + "\"}"
                + "]"
                + "}";

        OutputStream os = conn.getOutputStream();
        os.write(json.getBytes());
        os.flush();

        BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
        String line, result = "";

        while ((line = br.readLine()) != null) {
            result += line;
        }

        response.setContentType("application/json");
        response.getWriter().write(result);
    }
}