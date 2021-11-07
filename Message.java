package technical.blog.com.entities;

public class Message {

	 private String content;
	 private String type;
	 private String cssClass;
	 private String color;
	 
	 
	public Message() {
		super();
	}


	public Message(String content, String type, String cssClass, String color) {
		super();
		this.content = content;
		this.type = type;
		this.cssClass = cssClass;
		this.color = color;
	}


	public String getContent() {
		return content;
	}


	public void setContent(String content) {
		this.content = content;
	}


	public String getType() {
		return type;
	}


	public void setType(String type) {
		this.type = type;
	}


	public String getCssClass() {
		return cssClass;
	}


	public void setCssClass(String cssClass) {
		this.cssClass = cssClass;
	}


	public String getColor() {
		return color;
	}


	public void setColor(String color) {
		this.color = color;
	}


	@Override
	public String toString() {
		return "Message [content=" + content + ", type=" + type + ", cssClass=" + cssClass + ", color=" + color + "]";
	}
	 
	
	
	 
}
