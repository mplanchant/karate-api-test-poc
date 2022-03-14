package foodapi;

import com.intuit.karate.junit5.Karate;

class FoodApiTest {
    @Karate.Test
    Karate testAll() {
        return Karate.run().relativeTo(getClass());
    }
}