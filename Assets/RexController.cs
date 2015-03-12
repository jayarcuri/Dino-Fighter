using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class RexController : MonoBehaviour
{	
private int health, moveCount, jumpFrames;
public bool hasJumped { get; set; } 
public bool hasThrown { get; set; } 
public bool knockedDown{ get; set; } 
public bool blocking{ get; set; } 
public bool invuln{ get; set; }
private string jumpDirection;
public float knockback { get; set; }
public List<MoveClass> moveQueue;
public int playerID;
public float walkSpeed,forwardDash, backDash, jumpFactor;
public HitboxScript myLimb;
public GameObject opponent;
private InputPanel2 iP2;
private float initialHeight;
public HealthBarController healthBar;

void Start ()
{
	initialHeight = gameObject.transform.localPosition.y;
	moveCount = 0; //count for block of move
	moveQueue = new List<MoveClass>();
	iP2 = FindObjectOfType<InputPanel2> ();
	health = 70;
}

void Update(){
	if(Input.GetKeyDown("d"))
		transform.position += transform.right;
	
}


public void addMove (MoveClass move)
{
	moveQueue.Insert(moveQueue.Count, move);
}

public int GetPlayerID(){
	return playerID;
}


public void takeMove ()
{
	//print (moveQueue.Count + "for player " + GetPlayerID());
	if (!hasJumped || moveQueue.Count > 0) {
		if (opponent.transform.position.x < transform.position.x && transform.localRotation.y != 180) //block checks if a player needs to spin around
			transform.localEulerAngles = new Vector3 (0, 180, 0);
		if (opponent.transform.position.x > transform.position.x && transform.localRotation.y != 0)
			transform.localEulerAngles = Vector3.zero;}												//block ends
	
	moveQueue [0].framesLeft -= 1;
	MoveClass thisMove = moveQueue [0];
	int currentFrameNumber = thisMove.initialFrames - thisMove.framesLeft;
	if(thisMove.name != "Defend")	//If the player has continued blocking since last turn,
		blocking = false;				//then there is no gap where they are not blocking
	//Debug.Log("Player " + playerID + ": " + nextMove);
	
	switch (thisMove.name) {
		
		
	case "Knocked Down":
		if(currentFrameNumber == 0)
			invuln = true;
		if (currentFrameNumber == moveQueue[0].initialFrames) {
			moveCount = 0;
			invuln = false;
		}
		break;
	case "Light Attack":
	case "Medium Attack":
		if(thisMove.activeFrames[0] == currentFrameNumber)
			myLimb.SetHitBox(thisMove);
		if(thisMove.activeFrames[0] + thisMove.activeFrames.Length - 1 <  currentFrameNumber)
			myLimb.ClearBox ();
		break;
		
		
	case "Hit":
		transform.position += transform.right * -thisMove.kB;
		break;
		
		
	case "Heavy Attack":
		if (currentFrameNumber < 3)
			transform.Translate (Vector3.right * .2f);
		if (currentFrameNumber == 2)
			myLimb.SetHitBox (moveQueue [0]);
		if (currentFrameNumber == 3)
			myLimb.ClearBox ();
		if (currentFrameNumber == moveQueue[0].initialFrames)
			moveCount = 0;
		break;
		
	case "Defend":
		blocking = true;
		break;
		
	case "Walk Forward":
		gameObject.transform.Translate (Vector3.right * walkSpeed);
		//	myDino.animation.Play ("walk");
		break;
		
	case "Walk Back":
		gameObject.transform.Translate (-Vector3.right * walkSpeed);
		//	myDino.animation.Play ("walk");
		break;
		
	case "Forward Dash":
		gameObject.transform.Translate (Vector3.right * forwardDash/3);
		break;
		
	case "Back Dash":
		if (currentFrameNumber == 0)
			invuln = true;
		if (moveCount == 1) {
			invuln = false;
		}
		gameObject.transform.Translate (-Vector3.right * backDash/5);
		moveCount++;
		if (moveCount == 5)
			moveCount = 0;
		break;
		
	case "Jump":
		if (currentFrameNumber <= 3)
			transform.Translate (Vector3.up * jumpFactor);
		if (currentFrameNumber > 3)
			transform.Translate (Vector3.down * jumpFactor);
		/*if (jumpFrames == 0) {
				hasJumped = false;
				iP2.setAirAttack (playerID);
			}*/
		break;
		
	case "Jump Right":
		
		if (currentFrameNumber <= 3)
			transform.Translate (Vector3.up * jumpFactor);
		if (currentFrameNumber > 3)
			transform.Translate (Vector3.down * jumpFactor);
		gameObject.transform.Translate (Vector3.right * forwardDash/3);
		/*if (jumpFrames == 0) {
				hasJumped = false;
				iP2.setAirAttack (playerID);
			}*/
		break;
		
	case "Jump Left":
		if (currentFrameNumber <= 3)
			transform.Translate (Vector3.up * jumpFactor);
		if (currentFrameNumber > 3)
			transform.Translate (Vector3.down * jumpFactor);
		gameObject.transform.Translate (-Vector3.right * forwardDash/3);
		/*if (jumpFrames == 0) {
				hasJumped = false;
				iP2.setAirAttack (playerID);
			}*/
		break;
		
		
	case "Air Attack":
	case "Jump AA":
	case "Jump Left AA":
	case "Jump Right AA":
		if(thisMove.activeFrames[0] == currentFrameNumber){
			myLimb.SetHitBox(thisMove);}
		if(thisMove.activeFrames[0] + 1 <  currentFrameNumber)
			myLimb.ClearBox ();
		
		if (currentFrameNumber <= 3)
			transform.Translate (Vector3.up * jumpFactor);
		if (currentFrameNumber > 3 && currentFrameNumber < 7)
			transform.Translate (Vector3.down * jumpFactor);
		
		if (thisMove.name == "Jump Left AA" && currentFrameNumber < 7)
			gameObject.transform.Translate (-Vector3.right * jumpFactor);
		if (jumpDirection == "Jump Right AA" && currentFrameNumber < 7)
			gameObject.transform.Translate (Vector3.right * jumpFactor);
		
		break;
		
		case "SPD":
			if(thisMove.activeFrames[0] == currentFrameNumber)
				myLimb.SetHitBox(thisMove);
		break;
		
		
	case "Tyrant Smash":
		if (moveCount == 0) {
			invuln = true;
			myLimb.SetHitBox (moveQueue [0]);
		}
		if (moveCount == 3){
			invuln = false;
			myLimb.ClearBox();}
		moveCount++;
		if (moveCount == 8)
			moveCount = 0;
		break;
		
	case "Throw":
		if (moveCount == 0) {
			myLimb.SetHitBox (moveQueue [0]);
			hasThrown = true;
		}
		if (moveCount == 1)
			myLimb.ClearBox ();
		if (moveCount == 2)
			hasThrown = false;
		moveCount++;
		if (moveCount == 5)
			moveCount = 0;
		break;
		
		
	default :
		break;
		
	}
		transform.position = new Vector3 (Mathf.Clamp (transform.localPosition.x, -5.874f, 5.874f), 
		                                  transform.localPosition.y, Mathf.Clamp (transform.localPosition.z, 1.04f, 4f));
	
	if (moveQueue [0].framesLeft == 0)
		moveQueue.RemoveAt (0);
}


public void setupNextTurn(){
	int count = 0;
	//while the total number of frames within the moves passed to Control is less than 3, dequeueing continues
	while (count < 3 && hasNext()) {
		int temp = moveQueue [0].framesLeft;
		if(count == 0)
			iP2.setBox (count, moveQueue [0], true);
		else
			iP2.setBox (count, moveQueue [0]);
		moveQueue.RemoveAt (0);
		count += temp;
		//Debug.Log (playerID + " - setting next turn");
	}
}

public bool hasNext(){
	return moveQueue.Count > 0;
}

public MoveClass getMove(){
	return moveQueue [0];
}

public bool wasHit(){
	return !invuln;
}

public int getHealth(){
	return health;
}

public void ClearStates(){
	//	Debug.Log ("Cleared - iD: " + playerID);
	moveQueue.Clear ();
	jumpFrames = moveCount = 0;
	hasThrown = hasJumped = false;
	if (transform.localPosition.y != initialHeight)
		transform.localPosition = new Vector3 (transform.localPosition.x, initialHeight, transform.localPosition.z);
}


public void takeHit (MoveClass move)
{
	print ("KB is " + move.kB);
	print ("Recovery is" + move.recovery);
	print ("Hitstun is" + (move.recovery + move.hitStun));
	print ("Instant Knockback is " + move.kB*move.recovery / (move.recovery + move.hitStun));
	
	Debug.Log ("hit taken: " + move.dmg);
	
	if (blocking && move.bStun != -10) { // block chunk
		float instantKnockback = move.kB*move.recovery / (move.recovery + move.hitStun);
		transform.position += transform.right * -instantKnockback; //Instant Knockback applied
		
		print (instantKnockback);
		addMove (new MoveClass ("Defend", move.bStun, new int[0], 0, 0, 0, 0, 0, move.kB - instantKnockback));
		Debug.Log ("Defend queued");
	} else if (!blocking || move.bStun == -10) { //hit chunk - if not blocking or if thrown
		if (move.kB == -1) { //if a character is knocked down
			addMove (new MoveClass ("Knocked Down", 6, new int[0], 0, 0, 0, 0, 0, 0)); //queue knockdown
			Debug.Log ("KD queued");	
		} 
		
		else {	//queue hit turns
			float instantKnockback = move.kB*move.recovery / (move.recovery + move.hitStun);
			transform.position += -transform.right * instantKnockback; //Instant Knockback applied
			
			print (instantKnockback);
			addMove (new MoveClass("Hit", move.hitStun, new int[0], 0,0,0,0,0, move.kB - instantKnockback));
			Debug.Log("Hit queued.");
		}
	} //hit chunk ends
	
	health = health - move.dmg;
	healthBar.HealthUpdate (health);
	
	//Game Over check
	if (health <= 0)
		iP2.endGame ();
}



}

