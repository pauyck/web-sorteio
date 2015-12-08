package mvc;

import java.util.ArrayList;

public class SorteioControle {
	private ArrayList<Integer> numeros;
	private String num;
	private int y;

	public SorteioControle() {
		popular();
	}

	private void popular() {
		numeros = new ArrayList<Integer>(10);
		num = "?";
		y =0;
		for (int i = 1; i <= 10; i++) {
			getNumeros().add(i);
		}
	}

	public ArrayList<Integer> getNumeros() {
		return numeros;
	}

	public void setNumeros(ArrayList<Integer> numeros) {
		this.numeros = numeros;
	}

	public void sortear() {
		if (numeros.size() > 0) {
			try {
				int i = (int) Math.round(Math.random() * 10);
				String numero = numeros.get(i).toString();
				numeros.remove(i);
				if (num.equals("?")) {
					num = numero + " ";
				} else {
					num += numero + " ";
				}
			} catch (IndexOutOfBoundsException e) {
				sortear();
			}
		} else {
			if(y < 3) {
				num += "!";
				y++;
			} else {
				num +=" PARE DE TENTAR ";
			}
		}
	}

	public String sorteado() {
		return num;
	}

}