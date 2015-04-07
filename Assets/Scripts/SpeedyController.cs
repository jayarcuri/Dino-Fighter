using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class SpeedyController : MonoBehaviour
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
public GameObject myDino;
public float walkSpeed,forwardDash, backDash, jumpFactor;
public HitboxScript myLimb;
public GameObject opponent;
private InputPanel2 iP2;
private float initialHeight;
	public AudioSource move;
	public AudioSource die;
public HealthBarController healthBar;
	private Queue previousAnimationSpeed;

void Start ()
{
		previousAnimationSpeed = new Queue ();
	initialHeight = gameObject.transform.localPosition.y;
	moveCount = 0; //count for block of move
	moveQueue = new List<MoveClass>();
	iP2 = FindObjectOfType<InputPanel2> ();
	health = 50;
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
	
public void StartAnimations(){
		if (myDino.GetComponent<Animation>().isPlaying)
		foreach (AnimationState anim in myDino.GetComponent<Animation>()) {
			if(previousAnimationSpeed.Count >0){
				anim.speed = (float)previousAnimationSpeed.Dequeue();}
		}
	}


public void takeMove ()
{
		if (moveQueue.Count > 0) {
			//print (moveQueue.Count + "for player " + GetPlayerID());
			if (!hasJumped || moveQueue.Count > 0) {
				if (opponent.transform.position.x < transform.position.x && transform.localRotation.y != 180) //block checks if a player needs to spin around
					transform.localEulerAngles = new Vector3 (0, 180, 0);
				if (opponent.transform.position.x > transform.position.x && transform.localRotation.y != 0)
					transform.localEulerAngles = Vector3.zero;
			}												//block ends
	
			moveQueue [0].framesLeft -= 1;
			MoveClass thisMove = moveQueue [0];
			int currentFrameNumber = thisMove.initialFrames - thisMove.framesLeft;
			if (thisMove.name != "Defend")	//If the player has continued blocking since last turn,
				blocking = false;				//then there is no gap where they are not blocking


		
			if (!myDino.GetComponent<Animation>().isPlaying)
				myDino.GetComponent<Animation>().CrossFade ("Idle", 0.2f, PlayMode.StopSameLayer);
			//Debug.Log("Player " + playerID + ": " + nextMove);
	
			switch (thisMove.name) {
		
		
			case "Knocked Down":
				if (currentFrameNumber == 0) {
					myDino.GetComponent<Animation>().PlayQueued ("Lose", QueueMode.PlayNow);
					invuln = true;
				}
				if (currentFrameNumber == moveQueue [0].initialFrames) {
					invuln = false;
					myDino.GetComponent<Animation>().PlayQueued ("Idle", QueueMode.PlayNow);
				}
				break;

			case "Light Attack":
				if (thisMove.activeFrames [0] == currentFrameNumber) {
					myLimb.SetHitBox (thisMove);
					myDino.GetComponent<Animation>().PlayQueued ("Light", QueueMode.PlayNow);
				}
				if (thisMove.activeFrames [0] + thisMove.activeFrames.Length - 1 < currentFrameNumber)
					myLimb.ClearBox ();
				break;

			case "Medium Attack":
				if (thisMove.activeFrames [0] == currentFrameNumber) {
					myLimb.SetHitBox (thisMove);
					myDino.GetComponent<Animation>().PlayQueued ("Medium", QueueMode.PlayNow);
				}
				if (thisMove.activeFrames [0] + thisMove.activeFrames.Length - 1 < currentFrameNumber)
					myLimb.ClearBox ();
				break;
		
		
			case "Hit":
				if (currentFrameNumber == 1)
					myDino.GetComponent<Animation>().PlayQueued ("Hit", QueueMode.PlayNow).speed = 20f / 12f;
				transform.position += transform.right * -thisMove.kB;
				break;
		
		
			case "Heavy Attack":
				if (currentFrameNumber == 1)
					myDino.GetComponent<Animation>().PlayQueued ("Heavy", QueueMode.PlayNow).speed = 1.4f;
				if (currentFrameNumber == 2) {
					myLimb.SetHitBox (moveQueue [0]);
					myDino.transform.localPosition += (Vector3.right * .5f);
				}
				if (currentFrameNumber == 3) {
					myLimb.ClearBox ();
					myDino.transform.localPosition += (-Vector3.right * .5f);
					gameObject.transform.Translate (Vector3.right * .5f);
				}
				break;
		
			case "Defend":
				if (!blocking) {
					myDino.GetComponent<Animation>().PlayQueued ("DefendStart", QueueMode.PlayNow);
					myDino.GetComponent<Animation>().PlayQueued ("DefendFreeze", QueueMode.CompleteOthers);
					blocking = true;
				}
				break;
		
			case "Walk Forward":
				myDino.GetComponent<Animation>().PlayQueued ("Dash", QueueMode.PlayNow);
				gameObject.transform.Translate (Vector3.right * walkSpeed);
				move.Play();
		//	myDino.animation.Play ("walk");
				break;
		
			case "Walk Back":
				myDino.transform.localEulerAngles = new Vector3 (0, 90, 0);
				myDino.GetComponent<Animation>().PlayQueued ("Dash", QueueMode.PlayNow);
				gameObject.transform.Translate (-Vector3.right * walkSpeed);
				move.Play();
				break;
		
			case "Forward Dash":
				move.Play();
				if (currentFrameNumber == 1) {
					myDino.GetComponent<Animation>().PlayQueued ("DashStart", QueueMode.PlayNow);
					//if(currentFrameNumber == 2) 
					myDino.GetComponent<Animation>().PlayQueued ("Dash", QueueMode.CompleteOthers);
					myDino.GetComponent<Animation>().PlayQueued ("Dash", QueueMode.CompleteOthers);
					//if(currentFrameNumber == 3) 
					myDino.GetComponent<Animation>().PlayQueued ("DashEnd", QueueMode.CompleteOthers);
				
					//StartCoroutine(dinoLerp(Vector3.right * forwardDash));
				}
				gameObject.transform.Translate (Vector3.right * forwardDash / 3);
			
				break;
			
			case "Back Dash":
				move.Play();
				if (currentFrameNumber == 1) {
					myDino.transform.localEulerAngles = new Vector3 (0, 90, 0);
					invuln = true;
					myDino.GetComponent<Animation>().PlayQueued ("DashStart", QueueMode.PlayNow);
					myDino.GetComponent<Animation>().PlayQueued ("Dash", QueueMode.CompleteOthers);
					myDino.GetComponent<Animation>().PlayQueued ("Dash", QueueMode.CompleteOthers);
					myDino.GetComponent<Animation>().PlayQueued ("Dash", QueueMode.CompleteOthers);
					myDino.GetComponent<Animation>().PlayQueued ("Dash", QueueMode.CompleteOthers);
					myDino.GetComponent<Animation>().PlayQueued ("DashEnd", QueueMode.CompleteOthers);
				}
				if (currentFrameNumber == 2) {
					invuln = false;
				}
				gameObject.transform.Translate (-Vector3.right * backDash / 5);
				break;
		
			case "Jump":
				if (currentFrameNumber == 1) {
					myDino.GetComponent<Animation>().PlayQueued ("JumpStart", QueueMode.PlayNow).speed = 1.5f;
					myDino.GetComponent<Animation>().PlayQueued ("JumpMiddle", QueueMode.CompleteOthers).speed = 0.21f;
					myDino.GetComponent<Animation>().PlayQueued ("JumpEnd", QueueMode.CompleteOthers);
				}
				if (currentFrameNumber <= 3 && currentFrameNumber > 1)
					transform.Translate (Vector3.up * jumpFactor);
				if (currentFrameNumber > 3)
					transform.Translate (Vector3.down * jumpFactor);
				break;
		
			case "Jump Right":
				if (currentFrameNumber == 1) {
					myDino.GetComponent<Animation>().PlayQueued ("JumpStart", QueueMode.PlayNow).speed = 1.5f;
					myDino.GetComponent<Animation>().PlayQueued ("JumpMiddle", QueueMode.CompleteOthers).speed = 0.21f;
					myDino.GetComponent<Animation>().PlayQueued ("JumpEnd", QueueMode.CompleteOthers);
				}
				if (currentFrameNumber <= 3 && currentFrameNumber > 1)
					transform.Translate (Vector3.up * jumpFactor);
				if (currentFrameNumber > 3)
					transform.Translate (Vector3.down * jumpFactor);
				gameObject.transform.Translate (Vector3.right * forwardDash / 3);
		/*if (jumpFrames == 0) {
				hasJumped = false;
				iP2.setAirAttack (playerID);
			}*/
				break;
		
			case "Jump Left":
				if (currentFrameNumber == 1) {
					myDino.GetComponent<Animation>().PlayQueued ("JumpStart", QueueMode.PlayNow).speed = 1.5f;
					myDino.GetComponent<Animation>().PlayQueued ("JumpMiddle", QueueMode.CompleteOthers).speed = 0.21f;
					myDino.GetComponent<Animation>().PlayQueued ("JumpEnd", QueueMode.CompleteOthers);
				}
				if (currentFrameNumber <= 3 && currentFrameNumber > 1)
					transform.Translate (Vector3.up * jumpFactor);
				if (currentFrameNumber > 3)
					transform.Translate (Vector3.down * jumpFactor);
				gameObject.transform.Translate (-Vector3.right * forwardDash / 3);
		/*if (jumpFrames == 0) {
				hasJumped = false;
				iP2.setAirAttack (playerID);
			}*/
				break;
		
		
			case "Air Attack":
			case "Jump AA":
			case "Jump Left AA":
			case "Jump Right AA":
				if (thisMove.activeFrames [0] == currentFrameNumber) {
					myLimb.SetHitBox (thisMove);
				}
				if (thisMove.activeFrames [0] + 1 < currentFrameNumber)
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
		
			case "Divekick":
				if (currentFrameNumber == 1) {
					transform.localEulerAngles = new Vector3 (transform.rotation.x, transform.rotation.y, -45f);
					myLimb.SetHitBox (thisMove);
					myDino.GetComponent<Animation>().PlayQueued ("DivePeck", QueueMode.PlayNow);
				}
				gameObject.transform.Translate (Vector3.right * 0.3f);
				gameObject.transform.Translate (Vector3.down * 0.6f);
				if (transform.localPosition.z <= 1.04)
					thisMove.framesLeft = 0;
				if (thisMove.framesLeft == 0) {
					myLimb.ClearBox ();

				}
				break;
		
		
			case "Dash Peck":
				if(currentFrameNumber == 1)
					myDino.GetComponent<Animation>().PlayQueued ("DashAttackOnly", QueueMode.PlayNow);
				if (currentFrameNumber < 4) {
					move.Play();
					gameObject.transform.Translate (Vector3.right * 0.4f);

				}
				if (currentFrameNumber == 3) {
					myLimb.SetHitBox (thisMove);
				}
				if (currentFrameNumber == 4) {
					myLimb.ClearBox ();
				}
				break;
		
			case "Throw":
				if (moveCount == 0) {
					myLimb.SetHitBox (moveQueue [0]);
					myDino.GetComponent<Animation>().PlayQueued ("GuardBreak", QueueMode.PlayNow);
					hasThrown = true;
				}
				if (moveCount == 1)
					myLimb.ClearBox ();
				if (moveCount == 2)
					hasThrown = false;
				break;
		
		
			default :
				break;
		
			}
			transform.position = new Vector3 (Mathf.Clamp (transform.localPosition.x, -5.874f, 5.874f), 
		                                  Mathf.Clamp (transform.localPosition.y, 1.04f, 4f), transform.localPosition.z);
			if (moveQueue [0].framesLeft == 0) {
				moveQueue.RemoveAt (0);
				myDino.transform.localEulerAngles = new Vector3 (0, -90, 0);
			}
		}
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

	public void StopAnimations(){
		foreach (AnimationState anim in myDino.GetComponent<Animation>()) {
			previousAnimationSpeed.Enqueue(anim.speed);
			anim.speed = 0f;
		}
	}

public void ClearStates(){
	//	Debug.Log ("Cleared - iD: " + playerID);
	moveQueue.Clear ();
		previousAnimationSpeed.Clear ();
		myDino.GetComponent<Animation>().Stop ();
	jumpFrames = moveCount = 0;
	hasThrown = hasJumped = false;
		transform.localEulerAngles = new Vector3 (0, transform.rotation.y, 0);
	if (transform.localPosition.y != initialHeight)
		transform.localPosition = new Vector3 (transform.localPosition.x, initialHeight, transform.localPosition.z);
}


public void takeHit (MoveClass move)
	{
	
	Debug.Log ("hit taken: " + move.dmg);
	
	if (blocking && move.bStun != -10) { // block chunk
		float instantKnockback = move.kB*move.recovery / (move.recovery + move.hitStun);
		transform.position += transform.right * -instantKnockback; //Instant Knockback applied

		addMove (new MoveClass ("Defend", move.bStun, new int[0], 0, 0, 0, 0, 0, move.kB - instantKnockback));

	} else if (!blocking || move.bStun == -10) { //hit chunk - if not blocking or if thrown
		if (move.kB == -1) { //if a character is knocked down
			addMove (new MoveClass ("Knocked Down", 6, new int[0], 0, 0, 0, 0, 0, 0)); //queue knockdown

		} 
		
		else {	//queue hit turns
			float instantKnockback = move.kB*move.recovery / (move.recovery + move.hitStun);
			transform.position += -transform.right * instantKnockback; //Instant Knockback applied


			addMove (new MoveClass("Hit", move.hitStun, new int[0], 0,0,0,0,0, move.kB - instantKnockback));

		}
	} //hit chunk ends
	
	health = health - move.dmg;
	healthBar.HealthUpdate (health);
	
	//Game Over check
	if (health <= 0) {
			iP2.endGame ();
			die.Play();
			myDino.GetComponent<Animation>().PlayQueued ("Lose", QueueMode.PlayNow);}
}



}