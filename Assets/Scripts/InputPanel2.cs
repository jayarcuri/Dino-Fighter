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
	public Sprite[] spriteLibrary;
	private Text[] buttonArrayText;
	private Image[] buttonArrayImage;
	private MoveClass[] moveArray;
	//public RexController[] players; //replacement for character variables
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
		buttonArrayImage = new Image[3];
		for (int i = 0; i<3; i++) {
			buttonArrayImage[i] = buttonArray[i].GetComponent<Image>();
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
		ImageSwitch (index, move.name);
		if (move.name == "Air Attack") {
			MoveClass temp = moveArray [index];
			moveArray [index] = new MoveClass (temp.name + " AA", temp.initialFrames + 1, new int[2] {(temp.initialFrames - temp.framesLeft +1), (temp.initialFrames - temp.framesLeft+2) },
			move.hitStun, move.bStun, move.priority, move.range, move.dmg, move.kB, temp.framesLeft+1);
			print("Current frame is " + (temp.initialFrames - temp.framesLeft) + " of " + (temp.initialFrames+1) + " initial and " + (temp.framesLeft+1) + " current.");

		} else
			moveArray [index] = move;

		// sets buttons to occupied by a move's name if applic, sets those to null in move array
		for (int i = index+1; i<3; i++) { 
			if(moveArray [index].framesLeft > i-index){
				moveArray[i] = null;
				ImageSwitch(i, move.name);
				buttonArray[i].interactable = false;}
			else{	//Clears buttons and makes interactable if applic
				if(!buttonArray[i].IsInteractable()){
					buttonArray[i].interactable = true;
					ImageClear(i);
				}
				else //Breaks if an interactable button is found
					i = 3;}
		}

		//The submit button is only accessable if all buttons are set
			takeTurnButton.interactable = (buttonArrayText [0].text != "_" &&
		               buttonArrayText [1].text != "_" && 
		                	buttonArrayText [2].text != "_");
	}

	public void setBox(int index, MoveClass move, bool isFirstBlockofNewTurn){
		ImageSwitch (index, move.name);
		moveArray [index] = move;
		if(isFirstBlockofNewTurn)
			buttonArray[index].interactable = false;
		
		// sets buttons to occupied by a move's name if applic, sets those to null in move array
		for (int i = index+1; i<3; i++) { 
			if(move.framesLeft > i-index){
				moveArray[i] = null;
				ImageSwitch(i, move.name);
				buttonArray[i].interactable = false;}
			else{	//Clears buttons and makes interactable if applic
				if(!buttonArray[i].IsInteractable()){
					buttonArray[i].interactable = true;
					ImageClear(i);
				}
				else //Breaks if an interactable button is found
					i = 3;}
		}
		
		//The submit button is only accessable if all buttons are set
		takeTurnButton.interactable = (buttonArrayText [0].text != "_" &&
		                               buttonArrayText [1].text != "_" && 
		                               buttonArrayText [2].text != "_");
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
		//This function plays when the "Take Turn!" gui element is pressed. 
		if (turn % 2 == 1) {
			Debug.Log ("Turn: " + turn);
			foreach(MoveClass move in moveArray){
			if(move != null){
					adam.addMove(move);
					print("Queuing " + move.name + " for adam");}
					}
			moveArray = new MoveClass[]{null, null, null};

			ImageClear(0);
			ImageClear(1);
			ImageClear (2);
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

			ImageClear(0);
			ImageClear(1);
			ImageClear (2);
				adam.setupNextTurn ();

			//	executionPhase = false; <--Think this is unneeded
			}
		}
	
	public void registerHit (MoveClass hit)
	{
		HitQueue.Enqueue (hit);
	}

	private void playHits(){
			adam.ClearStates ();
			eve.ClearStates ();

		while(HitQueue.Count > 0){
			FrankController victim = null;
			MoveClass hit = (MoveClass)HitQueue.Dequeue();
			print (hit.name);
			print((hit.recovery) + " is the length of recovery.");
			if((hit.playerID+1) % 2 == 0)
				victim = adam;
			if((hit.playerID+1) % 2 == 1)
				victim = eve;


			victim.takeHit (hit);
		/*	Debug.Log (victim.playerID + " was hit");
			if (victim.blocking && hit.bStun != -10) { // block chunk
				float instantKnockback = hit.kB*(hit.recovery / (hit.recovery + hit.bStun));
				victim.takeHit (instantKnockback, hit);
				victim.addMove(new MoveClass("Defend", hit.bStun, new int[0], 0, 0, 0, 0, 0, 0));
					Debug.Log("Defend queued");
			}

			if (!victim.blocking || hit.bStun == -10) { //hit chunk - if not blocking or if thrown
				Debug.Log("Hit reported");
				float instantKnockback = hit.kB*(hit.recovery / (hit.recovery + hit.hitStun));
				victim.takeHit (hit, instantKnockback); //deal damage to victim
				if (hit.kB == -1) { //if a character is knocked down
					victim.addMove(new MoveClass("Knocked Down", 6, new int[0], 0, 0, 0, 0, 0, 0)); //queue knockdown
					Debug.Log("KD queued");	
				} 

				if(hit.kB >= 0) {	//queue hit turns
						victim.addMove (new MoveClass("Hit", hit.hitStun, new int[0], 0,0,0,0,0,0));
						Debug.Log("Hit queued.");
					}
			} //hit chunk ends */
		}
		executionPhase = false;
		print ("Player one health: " + adam.getHealth() + " || Player two health: " + eve.getHealth());
	}

	private void ImageClear(int index){
		//Quick fix for "Next Turn" button check
		buttonArrayText [index].text = "_";
		buttonArray [index].interactable = true;
		buttonArrayImage [index].sprite = spriteLibrary [14];
	}

	public MoveClass MoveAt(int index){
		if (moveArray [index] != null)
			return moveArray [index];
		else {
			//throw new UnityException ("No move at that index!");
			return new MoveClass("null");
		}
	}

	private void ImageSwitch(int index, string name){
		//Clears text field
		buttonArrayText [index].text = "";

		//Assigns appropriate icon to button
		switch (name) {

			//assigns blank image with text due to lack of current art
		case "Knocked Down":
		case "Hit":
		case "Dino-Punch":
		case "Throw":
		case "Defend":
			buttonArrayText[index].text = name;
			buttonArrayImage [index].sprite = spriteLibrary [14];
			break;

			
		case "Light Attack":
			buttonArrayImage [index].sprite = spriteLibrary [0];
			break;
			
		case "Medium Attack":
			buttonArrayImage [index].sprite = spriteLibrary [1];
			break;
			
		case "Heavy Attack":
			buttonArrayImage [index].sprite = spriteLibrary [2];
			break;
			
		case "Walk Forward":
			buttonArrayImage [index].sprite = spriteLibrary [12];
			break;
			
		case "Walk Back":
			buttonArrayImage [index].sprite = spriteLibrary [13];
			break;
			
		case "Forward Dash":
			buttonArrayImage [index].sprite = spriteLibrary [7];
			break;
			
		case "Back Dash":
			buttonArrayImage [index].sprite = spriteLibrary [8];
			break;
			
		case "Jump":
			buttonArrayImage [index].sprite = spriteLibrary [9];
			break;
			
		case "Jump Right":
			buttonArrayImage [index].sprite = spriteLibrary [11];
			break;
			
		case "Jump Left":
		buttonArrayImage [index].sprite = spriteLibrary [10];
			break;
			
			
		case "Air Attack":
			buttonArrayImage [index].sprite = spriteLibrary [6];
			break;
			
		case "Fireball":
			buttonArrayImage [index].sprite = spriteLibrary [3];
			break;

		default :
			break;
			
		}
	}

}