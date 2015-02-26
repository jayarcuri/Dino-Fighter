using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;

public class InputPanel2 : MonoBehaviour {

	public FrankController adam;
	public Texture devo;
	public FrankController eve;
	public Texture cartesian;
	private int turn = 0;
	public Button[] buttonArray;
	private Text[] buttonArrayText;
	private MoveClass[] moveArray;
	public FrankController[] players; //replacement for character variables
	private bool[] airAttackOK;
	private Queue HitQueue;
	public Text turnBox;
	public Button takeTurnButton;
	public bool hitOccurred { get; set; }
	private int extraFrames;
	//private string moveText1, moveText2, moveText3;
	private AudioSource mySong;
	private GUITexture blackout;
	private bool started, movelistUp, gameOver, turnSwitch;
	public bool executionPhase { get; set; }



	void Start ()
	{
		HitQueue = new Queue ();
		moveArray = new MoveClass[3];
		blackout = GetComponent<GUITexture> ();
		airAttackOK = new bool[]{true, true};
		mySong = GetComponent<AudioSource> ();
		turnSwitch = hitOccurred = executionPhase = movelistUp = gameOver = started = false;
		buttonArrayText = new Text[3];
		for (int i = 0; i<3; i++) {
			buttonArrayText[i] = buttonArray[i].GetComponentInChildren<Text>();
		}
	}

	
	void Update ()
	{

	//inefficient: fix later
	turnBox.text = "Player " + (turn%2 +1 )+ "'s Turn" ;
	
		//I've been using this space for testing purposes;
		//I'm mapping a series of actions to 

	/*	

		if (Input.GetKeyDown ("s")) {
			endGame();
		}

		if (Input.GetKey ("e")) {
			eve.transform.Translate (Vector3.right * .1f);
			adam.transform.Translate (Vector3.right * .1f);
		}*/
		
	}


	public void setAirAttack(int i){
		airAttackOK [i] = true;
	}


	public void setBox(int index, MoveClass move){
		buttonArrayText[index].text = move.name;
		moveArray [index] = move;

		// sets buttons to occupied by a move's name if applic, sets those to null in move array
		for (int i = index+1; i<3; i++) { 
			if(move.frames > i-index){
				moveArray[i] = null;
			buttonArrayText[i].text = move.name;
				buttonArray[i].interactable = false;}
			else{	//Clears buttons and makes interactable if applic
				if(!buttonArray[i].IsInteractable()){
					buttonArray[i].interactable = true;
					buttonArrayText[i].text = "Pick a move!";
				}
				else //Breaks if an interactable button is found
					i = 3;}
		}

		//The submit button is only accessable if all buttons are set
			takeTurnButton.interactable = (buttonArrayText [0].text != "Pick a move!" &&
		               buttonArrayText [1].text != "Pick a move!" && 
		                	buttonArrayText [2].text != "Pick a move!");
	}
	
	public void endGame(){
		mySong.Play ();
		gameOver = true;
	}

	public void DirtyTurnStart(){
		StartCoroutine (takeTurn());
	}


	IEnumerator takeTurn(){
		turn += 1;
		takeTurnButton.interactable = false;
		//This function plays when the "Take Turn!" gui element is pressed. 
		if (turn % 2 == 1) {
			Debug.Log ("Turn: " + turn);
			foreach(MoveClass move in moveArray){
			if(move != null){
					adam.addMove(move);
					print("Queuing " + move.name + " for adam");}
					}
			moveArray = new MoveClass[]{null, null, null};

			buttonArrayText[0].text = "Pick a move!";
				buttonArray[0].interactable = true;
			buttonArrayText[1].text = "Pick a move!";
				buttonArray[1].interactable = true;
			buttonArrayText[2].text = "Pick a move!";
				buttonArray[2].interactable = true;
			eve.setupNextTurn ();
		}

		if (turn % 2 == 0) {
			executionPhase = true;
				Debug.Log ("Turn: " + turn);

		foreach(MoveClass move in moveArray){
			if(move != null){
				eve.addMove(move);
				print("Queuing " + move.name + " for eve");}
		}
		moveArray = new MoveClass[]{null, null, null};

				for (int n = 0; n < 3; n++) {
						if(executionPhase){
					adam.takeMove ();	
					eve.takeMove ();
					yield return new WaitForSeconds (0.5f);	
					if (HitQueue.Count > 0)
						playHits ();
				}
					}

			buttonArrayText[0].text = "Pick a move!";
			buttonArray[0].interactable = true;
			buttonArrayText[1].text = "Pick a move!";
			buttonArray[1].interactable = true;
			buttonArrayText[2].text = "Pick a move!";
			buttonArray[2].interactable = true;
				adam.setupNextTurn ();

			//	executionPhase = false; <--Think this is unneeded
			}
		}
	
	public void registerHit (HitClass hit)
	{
		HitQueue.Enqueue (hit);
	}

	private void playHits(){
			adam.ClearStates ();
			eve.ClearStates ();

		while(HitQueue.Count > 0){
			FrankController victim = null;
			HitClass hit = (HitClass)HitQueue.Dequeue();
			if((hit.playerID+1) % 2 == 0)
				victim = adam;
			if((hit.playerID+1) % 2 == 1)
				victim = eve;
			//players [hit.playerID].Clear ();
			Debug.Log (victim.playerID + " was hit");
			if (victim.blocking && hit.bStun != -10) { // block chunk
				victim.takeHit (hit.kB);
				victim.addMove(new MoveClass("Defend", hit.bStun, new int[0], 0, 0, 0, 0, 0, 0));
					Debug.Log("Defend queued");
			}

			if (!victim.blocking || hit.bStun == -10) { //hit chunk - if not blocking or if thrown
				Debug.Log("Hit reported");
				victim.takeHit (hit.kB, hit.dmg); //deal damage to victim
				if (hit.kB == -1) { //if a character is knocked down
					victim.addMove(new MoveClass("Knocked Down", 6, new int[0], 0, 0, 0, 0, 0, 0)); //queue knockdown
					Debug.Log("KD queued");	
				} 

				if(hit.kB >= 0) {	//queue hit turns
						victim.addMove (new MoveClass("Hit", hit.hitstun, new int[0], 0,0,0,0,0,0));
						Debug.Log("Hit queued.");
					}
			} //hit chunk ends
		}
		executionPhase = false;
		print ("Player one health: " + adam.getHealth() + " || Player two health: " + eve.getHealth());
	}
}