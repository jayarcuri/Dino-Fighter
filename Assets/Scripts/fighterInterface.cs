using UnityEngine;
using System.Collections;

public interface fighterInterface
{

	void addMove(string move);
	void takeMove();
	void takeHit (int damage);
	bool hasNext();
	void wasHit();


}

