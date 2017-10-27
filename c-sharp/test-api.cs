using System;
using System.IO;
using System.Net;
using System.Text;

public class TestFriendbuyApi
{
    public static void Main ()
    {
        WebRequest request = WebRequest.Create("https://api-tls11.friendbuy.com");
        request.Credentials = CredentialCache.DefaultCredentials;
        WebResponse response = request.GetResponse();
        Console.WriteLine(((HttpWebResponse)response).StatusDescription);
        Stream dataStream = response.GetResponseStream();
        StreamReader reader = new StreamReader(dataStream);
        string responseFromServer = reader.ReadToEnd();
        Console.WriteLine(responseFromServer);
        reader.Close();
        response.Close();
    }
}