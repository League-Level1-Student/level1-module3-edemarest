package _02_backpack;

public class BackpackRunner {
	public static void main(String[] args) {
		Pencil pencil = new Pencil();
		Textbook text = new Textbook();
		Ruler ruler = new Ruler();
		Backpack.putInBackpack(pencil);
		Backpack.putInBackpack(text);
		Backpack.putInBackpack(ruler);
		new Backpack().packAndCheck();
		
		
		
	}
}
