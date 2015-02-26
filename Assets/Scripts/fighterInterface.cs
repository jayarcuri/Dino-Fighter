using UnityEngine;
using System.Collections;

public interface fighterInterface
{

	void addMove(string move);
	void takeMove();
	void hit (int damage);
	bool hasNext();
	string getMove(int index);


}

