package TestFramework.StudyJavaSelenium;

import java.net.MalformedURLException;
import java.net.URL;

import junit.framework.Assert;
import junit.framework.Test;
import junit.framework.TestCase;
import junit.framework.TestSuite;

import org.junit.rules.TestName;
import org.openqa.selenium.*;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.remote.DesiredCapabilities;
import org.openqa.selenium.remote.RemoteWebDriver;


public class AppTest extends TestCase
{

    public AppTest( )
    {
        super( );
    }
    

    public void testApp() throws MalformedURLException
    {
    	WebDriver driver = null;
    	try {
    		URL rc = new URL("http://0.0.0.0:4444/wd/hub");
    		driver = new RemoteWebDriver(rc, DesiredCapabilities.chrome());
    		TestName name = new TestName();
    		System.out.println("This is testing...");   
    		System.setProperty("webdriver.chrome.driver", "chromedriver");
    			driver.manage().window().maximize();
    			driver.get("http://www.cnn.com");
    	}
    	catch(WebDriverException e)
    		{
    			System.out.println(e.getMessage());
    		}
     	driver.quit();  
     }
}
