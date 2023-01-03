import java.io.Serializable;

public class Quotes implements Serializable {
    private int id;
    private String text;
    private String author;

    public Quotes() {

    }

    public String getAuthor() {
        return author;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public void setAuthor(String author) {
        this.author = author;
    }
}
