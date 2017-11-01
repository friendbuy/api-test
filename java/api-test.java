import java.net.*;
import java.io.*;

class URLConnectionReader {
    public static void main(String[] args) throws Exception {
        URL testApi = new URL("https://api-tls11.friendbuy.com");
        try {
            URLConnection conn = testApi.openConnection();
            BufferedReader in = new BufferedReader(new InputStreamReader(conn.getInputStream()));
            String inputLine;

            while ((inputLine = in.readLine()) != null)
                System.out.println(inputLine);
            in.close();
        } catch(Exception e) {
            System.out.println(e.getMessage());
            System.out.println("TLS 1.1 is not supported. Please upgrade your integration.");
        }
    }
}