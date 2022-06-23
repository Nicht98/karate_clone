import com.intuit.karate.junit5.Karate;

public class ZtrainApiRunner {

    @Karate.Test
    Karate testAll() {
        System.setProperty("karate.env", "auto");
        return Karate.run().relativeTo(getClass());
    }

    @Karate.Test
    Karate testTags() {
        System.setProperty("karate.env", "auto");
        return Karate.run().tags("@TEST").relativeTo(getClass());
    }

    @Karate.Test
    Karate testUser() {
        return Karate.run().relativeTo(getClass());
    }
}


