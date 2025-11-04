package test.shipments;

import com.intuit.karate.junit5.Karate;

public class ShipmentsRunnerTest {
    @Karate.Test
    Karate testShipments() {
        return Karate.run("shipments").relativeTo(getClass());
    }
}
