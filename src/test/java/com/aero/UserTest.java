package com.aero;

import org.junit.jupiter.api.Test;

import static com.aero.utills.PropertyLoader.getBaseUrl;
import static io.restassured.RestAssured.given;

public class UserTest {

  @Test
  public void getUserInfo(){
    given()
            .when().log().all().get(getBaseUrl()+"/v2/pet/10")
            .then().log().all().statusCode(200);
  }
}
