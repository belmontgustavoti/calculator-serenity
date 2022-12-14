package quebradoresanonimos.calculator.ux.pages;

import net.serenitybdd.core.pages.PageObject;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

public class ProductResultPageObject extends PageObject {

    @FindBy(id = "fator")
    private WebElement inputDiscountFactor;

    @FindBy(css = "div.alert > span")
    private WebElement alertDangerDiscountFactor;


    public String getValueOfDiscountFactor(){
        return inputDiscountFactor.getAttribute("value");
    }

    public String getDiscountFactorErrorMessage() {
        return alertDangerDiscountFactor.getText();
    }


}
