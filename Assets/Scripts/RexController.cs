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
public GameObject myDino;
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
	health = 70;
}

	public void StartAnimations(){
		if (myDino.GetComponent<Animation>().isPlaying)
		foreach (AnimationState anim in myDino.GetComponent<Animation>()) {
			if(previousAnimationSpeed.Count >0){
				anim.speed = (float)previousAnimationSpeed.Dequeue();}
		}
	}

void Update(){
	if(Input.GetKeyDown("d"))
		transform.position += transform.right;
	//	gameObject.transform.localPosition 
	//		= Vector3.Lerp (gameObject.transform.localPosition, Vector3.right * forwardDash/3, Time.deltaTime);
		
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
			case "Medium Attack":
				if (thisMove.activeFrames [0] == currentFrameNumber)
					myLimb.SetHitBox (thisMove);
				if (thisMove.activeFrames [0] + thisMove.activeFrames.Length - 1 < currentFrameNumber)
					myLimb.ClearBox ();
				break;
		
		
			case "Hit":
				if (currentFrameNumber == 1)
					myDino.GetComponent<Animation>().PlayQueued ("Hit", QueueMode.PlayNow).speed = 20f / 12f;
				transform.position += transform.right * -thisMove.kB;
				break;
		
		
			case "Heavy Attack":
				if(currentFrameNumber == 1)
					myDino.GetComponent<Animation>().PlayQueued("Heavy", QueueMode.PlayNow);
				if (currentFrameNumber == 2){
					myLimb.SetHitBox (moveQueue [0]);
					transform.Translate (Vector3.right * .2f);}
				if (currentFrameNumber == 3)
					myLimb.ClearBox ();
				break;
		
			case "Defend":
				if (!blocking) {
					myDino.GetComponent<Animation>().PlayQueued ("DefendStart", QueueMode.PlayNow);
					myDino.GetComponent<Animation>().PlayQueued ("DefendFreeze", QueueMode.CompleteOthers);
					blocking = true;
				}
				break;
		
			case "Walk Forward":
				move.Play();
				myDino.GetComponent<Animation>().PlayQueued ("Dash", QueueMode.PlayNow);
				gameObject.transform.Translate (Vector3.right * walkSpeed);
			//	myDino.animation.Play ("walk");
				break;
			
			case "Walk Back":
				move.Play();
				myDino.transform.localEulerAngles = new Vector3 (0, 90, 0);
				myDino.GetComponent<Animation>().PlayQueued ("Dash", QueueMode.PlayNow);
				gameObject.transform.Translate (-Vector3.right * walkSpeed);
				break;

		
			case "Forward Dash":
				move.Play();
				if (currentFrameNumber == 1) {
					myDino.GetComponent<Animation>().PlayQueued ("DashStart", QueueMode.PlayNow);
					//if(currentFrameNumber == 2) 
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
					myDino.GetComponent<Animation>().PlayQueued ("DashEnd", QueueMode.CompleteOthers);
				}
				if (currentFrameNumber == 2) {
					invuln = false;
				}
				gameObject.transform.Translate (-Vector3.right * backDash / 5);
				if (currentFrameNumber == 5)
					myDino.transform.localEulerAngles = new Vector3 (0, -90, 0);
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
		
			case "SPD":
				if (currentFrameNumber == 1) {
					myDino.GetComponent<Animation>().PlayQueued("Throw", QueueMode.PlayNow).speed=.5f;
					hasThrown = true;
				}
				if (currentFrameNumber ==2)
					myLimb.SetHitBox (moveQueue [0]);
				if (currentFrameNumber== 3){
					hasThrown = false;
					myLimb.ClearBox ();}
				if(!myDino.GetComponent<Animation>().isPlaying)
					myDino.GetComponent<Animation>().PlayQueued("Idle", QueueMode.PlayNow);
				break;
		
		
			case "Tyrant Smash":
				if (currentFrameNumber == 1) {
					invuln = true;
					myDino.GetComponent<Animation>().PlayQueued("GuardBreak", QueueMode.PlayNow).speed = 1.2f;

				}
				if (currentFrameNumber == 2) {
					myLimb.SetHitBox (moveQueue [0]);
					invuln = false;
					myLimb.ClearBox ();
				}
				if(!myDino.GetComponent<Animation>().isPlaying)
					myDino.GetComponent<Animation>().PlayQueued("Idle", QueueMode.PlayNow);
				break;
		
			case "Throw":
				if (currentFrameNumber == 1) {
					myLimb.SetHitBox (moveQueue [0]);
					myDino.GetComponent<Animation>().PlayQueued("Throw", QueueMode.PlayNow);
					hasThrown = true;
				}
				if (currentFrameNumber ==2)
					myLimb.ClearBox ();
				if (currentFrameNumber== 2)
					hasThrown = false;
				if(!myDino.GetComponent<Animation>().isPlaying)
					myDino.GetComponent<Animation>().PlayQueued("Idle", QueueMode.PlayNow);
				break;
		
		
			default :
				break;
		
			}
			transform.localPosition = new Vector3 (Mathf.Clamp (transform.localPosition.x, -5.874f, 5.874f), 
		                                  Mathf.Clamp (transform.localPosition.y, initialHeight, 4f), transform.localPosition.z);
	
			if (moveQueue [0].framesLeft == 0)
				moveQueue.RemoveAt (0);
		}
	}

	private IEnumerator dinoLerp(Vector3 difference){
		float sTime = Time.time;
		Vector3 target = transform.localPosition + difference;
		while (Time.time < sTime + 1.5f) {
			gameObject.transform.localPosition 
				= Vector3.Lerp (transform.localPosition, target, (Time.time - sTime)/1.5f);
			yield return null;
			}
	//	transform.position =transform.localPosition+ difference;
		transform.localPosition = target;
	}

	public void StopAnimations(){
		foreach (AnimationState anim in myDino.GetComponent<Animation>()) {
			previousAnimationSpeed.Enqueue(anim.speed);
			anim.speed = 0f;
		}
	}


public void setupNextTurn(){
	int count = 0;
	//while the total number of frames within the moves passed to Control is less than 3, dequeueing continues
	while (count < 3 && hasNext()) {
		int temp = moveQueue [0].framesLeft;
		if(count == 0)
			iP2.setBox (count, moveQueue [0], true);
		if(count > 0)
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
	
	Debug.Log ("hit taken: " + move.dmg);
	
	if (blocking && move.bStun != -10) { // block chunk
		float instantKnockback = move.kB*move.recovery / (move.recovery + move.hitStun);
		transform.position += transform.right * -instantKnockback; //Instant Knockback applied

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
			
				addMove (new MoveClass("Hit", move.hitStun, new int[0], 0,0,0,0,0, move.kB - instantKnockback));
			Debug.Log("Hit queued.");
		}
	} //hit chunk ends
	
	health = health - move.dmg;
	healthBar.HealthUpdate (health);
	
	//Game Over check
	if (health <= 0) {
			die.Play();
			iP2.endGame ();
			
			myDino.GetComponent<Animation>().PlayQueued ("Lose", QueueMode.PlayNow);
		}
}



}

