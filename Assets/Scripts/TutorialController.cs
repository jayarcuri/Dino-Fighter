using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class TutorialController : MonoBehaviour {

	public bool firstMove, firstHit;
	//private bool firstHit;
	public Toggle showTutorial;
	public GameObject panel;
	public string e {get; set;}
	public Text tutorialTxt;

	// Use this for initialization
	void Start ()
	{
		//panel = GameObject.Find ("TutorialPanel");
		//showTutorial = GameObject.Find ("Toggle");
		//tutorialTxt = GameObject.Find ("TutorialText");
		firstHit = firstMove = true;

	}
	
	// Update is called once per frame
	void Update ()
	{
	
	}

	public void showPanel(){
		if (showTutorial.isOn) {
			//print (e);
			if (e == "move" && firstMove) {
				tutorialTxt.text=
					"This is the move selection menu. " +
					"In each turn, you can queue up to three action block's worth of moves. " +
					"From each of the subcategories [Move, Attack, and Defend] on the left, " +
					"you can choose an action. Selecting an action will activate its tooltip, " +
						"which will display information about the move and how many action blocks are needed to execute the move.";
				panel.SetActive (true);
				firstMove = false;
			}
			if (e == "hit" && firstHit) {
				tutorialTxt.text="A player has been hit! This means they will suffer some number of knockdown action blocks " +
					"and all moves queued to occur after the action block in which the hit occurred will be cancelled.";
				panel.SetActive (true);
				firstHit = false;
			}
		}

	}
}

