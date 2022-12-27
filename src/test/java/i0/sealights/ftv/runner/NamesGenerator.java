package i0.sealights.ftv.runner;

import java.util.concurrent.ThreadLocalRandom;

public class NamesGenerator {

    private static final String[] NAMES = new String[]{"Will", "James", "Samuel", "John", "George", "Sam",
        "Fred", "Richard", "William", "Bert", "Albert", "David", "Carl", "Henry", "Walter",
        "Frederick", "Andrew", "Ernest", "Lee", "Louis", "Willis", "Bernard", "Jessie",
        "Edwin", "Oliver", "Sidney", "Isaac", "Philip", "Joseph", "Charley", "Edgar", "Ray",
        "Leonard", "Ralph", "Claude", "Raymond", "Jerry", "Horace", "Ed", "Otto", "Virgil", "Wilbur",
        "Abraham", "Leslie", "Jose", "Owen", "Wiley", "Morris", "Elbert", "Nicholas", "Clinton",
        "Phillip", "Marshall", "Wilson", "Eli", "Anton", "Emmett", "Manuel", "Augustus", "Marvin"};

    static String generateName() {
        final int randomInt = ThreadLocalRandom.current().nextInt(0, NAMES.length);
        return NAMES[randomInt];
    }
}
