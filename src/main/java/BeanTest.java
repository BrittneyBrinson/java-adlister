import java.util.ArrayList;

public class BeanTest {
    public static void main(String[] args) {
        Album hiphop = new Album();
        Quotes happyQuotes = new Quotes();
        Quotes mellowQuotes = new Quotes();
        Quotes interestingQuotes = new Quotes();
        Authors ErnestH = new Authors();

        happyQuotes.setAuthor("SpongeBob");
        happyQuotes.setText("I'm ready!");
        mellowQuotes.setAuthor("Squidward");
        mellowQuotes.setText("Everyone is a critic..");
        interestingQuotes.setAuthor("Mr.Krabs");
        interestingQuotes.setText("I love money!");

        ArrayList<Quotes> quoteList = new ArrayList<>();
        quoteList.add(happyQuotes);
        quoteList.add(mellowQuotes);
        quoteList.add(interestingQuotes);

        for (Quotes quoteObjects : quoteList) {
            System.out.println(quoteObjects.getAuthor() + ": " + quoteObjects.getText());
        }
    }
}
