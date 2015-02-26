using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class GUIManager : MonoBehaviour {

	GameObject Panel0, rootPanel, attackPanel, movePanel, frameDataPanel;
	Button current;
	string bIG;

	// Use this for initialization
	void Start () {
		Panel0 = GameObject.Find ("Panel0");
		rootPanel = GameObject.Find ("Panel1");
		attackPanel = GameObject.Find ("Panel2");
		movePanel = GameObject.Find ("Panel3");
		attackPanel.SetActive (false);
		movePanel.SetActive (false);
		//frameDataPanel = GameObject.Find ("panel4");
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	public void DisplayRoot(){
		rootPanel.SetActive (true);
	}

	public void DisplayAttacks(){
		rootPanel.SetActive (false);
		attackPanel.SetActive (true);
	}

	public void DisplayMovement(){
		movePanel.SetActive (true);
	}

	public void SetCurrentInput(Button newButton){ //untoggles old button if one exists and sets new button to new input
		if(newButton == current)
			//Untoggle
			print ("");
		else
				current = newButton;
		//toggle new

	}

	public void SetInput(string bigSean){
		bIG = bigSean;
	}

	public void Back(){
	/*	if (frameDataPanel.activeSelf) 
			frameDataPanel.SetActive (false);
		else*/ if (attackPanel.activeSelf) {
			attackPanel.SetActive (false);
			rootPanel.SetActive (true);
		} else if (movePanel.activeSelf) {
			movePanel.SetActive (false);
			rootPanel.SetActive (true);
		} else
			Panel0.SetActive(false);
	}

}
