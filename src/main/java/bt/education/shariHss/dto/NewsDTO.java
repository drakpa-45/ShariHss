package bt.education.shariHss.dto;

/**
 * Created by Pema Drakpa on 03/07/2023.
 */
public class NewsDTO {

    private String uuid;
    private String title;
    private String content;
    private String contentMore;
    private String author;
    private String publishedOn;
    private String googleImageId;

    public String getUuid() {
        return uuid;
    }

    public void setUuid(String uuid) {
        this.uuid = uuid;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getContentMore() {
        return contentMore;
    }

    public void setContentMore(String contentMore) {
        this.contentMore = contentMore;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getPublishedOn() {
        return publishedOn;
    }

    public void setPublishedOn(String publishedOn) {
        this.publishedOn = publishedOn;
    }

    public String getGoogleImageId() {
        return googleImageId;
    }

    public void setGoogleImageId(String googleImageId) {
        this.googleImageId = googleImageId;
    }
}
