using UnityEngine;
using System.Collections;

public class MoveDictionary : MonoBehaviour
{
	public MoveClass[] frank, speedy, king;
	// Use this for initialization
	void Awake ()
	{
		frank = new MoveClass[] { new MoveClass("Light Attack", 2, new int[] {1}, 1, 1, 0, .5f, 5, .4f), 
			new MoveClass("Medium Attack", 4, new int[] {1,2}, 1, 0, 0, .8f, 7, .8f),
			new MoveClass("Heavy Attack", 7, new int[] {3}, 1, 0, 0, .4f, 9, .7f),
			new MoveClass("Fireball", 9, new int[] {3}, 0, -1, 0, .75f, 8, .75f),
			new MoveClass("Dino-Punch", 8, new int[] {1,2,3}, -1, -3, 1, .4f, 15, 0),
			new MoveClass("Throw", 5, new int[] {1}, 0, -10, 1, .6f, 18, 0),
			new MoveClass("Air Attack", 2, new int[] {1, 2}, 2, 3, -1, .4f, 8, 0),
		new MoveClass("Forward Dash", 3, new int[0], 0, 0, 0, 0, 0, 0),
			new MoveClass("Back Dash", 5, new int[1] {1}, 0, 0, 0, 0, 0, 0)};

		speedy = new MoveClass[] { new MoveClass("Light Attack", 2, new int[] {1}, 0, 1, 1, .6f, 4, .5f), 
			new MoveClass("Medium Attack", 3, new int[] {1}, 1, 0, -1, .9f, 6, .7f),
			new MoveClass("Heavy Attack", 6, new int[] {2}, 0, -1, 0, 1.1f, 10, .8f),
			new MoveClass("Dash Peck", 9, new int[] {3}, 0, -1, 0, .4f, 8, .75f),
			new MoveClass("Divekick", 4, new int[] {1,2,3,4}, 1, 1, 0, .3f, 7, 0),
			new MoveClass("Throw", 5, new int[] {1}, 0, -10, 1, .6f, 18, 0),
			new MoveClass("Air Attack", 3, new int[] {2, 3}, 2, 2, 0, .3f, 8, 0),
			new MoveClass("Forward Dash", 3, new int[] {0}, 0, 0, 0, 0, 0, 0),
			new MoveClass("Back Dash", 5, new int[] {0}, 0, 0, 0, 0, 0, 0)};

		king = new MoveClass[] { new MoveClass("Light Attack", 2, new int[] {1}, 1, 0, 0, .6f, 6, .5f), 
			new MoveClass("Medium Attack", 3, new int[] {2}, 1, 1, 1, .9f, 6, .7f),
			new MoveClass("Heavy Attack", 5, new int[] {2}, -2, -1, 0, .8f, 10, -1),
			new MoveClass("Tyrant Slam", 6, new int[] {2}, 0, -2, 0, 1f, 12, 1),
			new MoveClass("SPD", 7, new int[] {1}, 0, 1, -10, .3f, 7, 0),
			new MoveClass("Throw", 5, new int[] {1}, 0, -10, 1, .6f, 18, 0),
			new MoveClass("Air Attack", 2, new int[] {1, 2}, 3, 3, 0, .6f, 12, 0),
			new MoveClass("Forward Dash", 3, new int[] {0}, 0, 0, 0, 0, 0, 0),
			new MoveClass("Back Dash", 5, new int[] {0}, 0, 0, 0, 0, 0, 0)};	

	}
	
	// Update is called once per frame
	public MoveClass[] getMoves(string character){
		if (character == "frank")
			return (MoveClass[])frank.Clone();
		else if (character == "speedy")
			return (MoveClass[])speedy.Clone();
		else if(character == "king")
			return (MoveClass[])king.Clone();
		else
			return null;
	}
}

