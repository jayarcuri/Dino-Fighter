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
	public float jumpFactor;
	public int playerID;
	public float walkSpeed,forwardDash, backDash;
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
		health = 50;
	}
	
	
	public void addMove (MoveClass move)
	{
		moveQueue.Insert(moveQueue.Count, move);
	}
	
	public int GetPlayerID(){
		return playerID;
	}
	
	
	public IEnumerator takeMove ()
	{
		print (moveQueue.Count + "for player " + GetPlayerID());
		if (!hasJumped || moveQueue.Count > 0) {
			if (opponent.transform.position.x < transform.position.x && transform.localRotation.y != 180) //block checks if a player needs to spin around
				transform.localEulerAngles = new Vector3 (0, 180, 0);
			if (opponent.transform.position.x > transform.position.x && transform.localRotation.y != 0)
				transform.localEulerAngles = Vector3.zero;}												//block ends
		
		blocking = false;
		string nextMove = moveQueue [0].name;
		MoveClass thisMove = moveQueue [0];
		int currentFrameNumber = thisMove.initialFrames - thisMove.framesLeft;
		//Debug.Log("Player " + playerID + ": " + nextMove);
		
		switch (nextMove) {
			
			
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
			transform.Translate (Vector3.right * knockback);
			break;
			
			
		case "Heavy Attack":
			if (currentFrameNumber < 3)
				transform.Translate (Vector3.right * .3f);
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
			//myDino.animation.Play ("walk");
			break;
			
		case "Walk Back":
			gameObject.transform.Translate (-Vector3.right * walkSpeed);
			//myDino.animation.Play ("walk");
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
			if (hasJumped == false) {
				jumpDirection = "up";
				jumpFrames = 6;
				hasJumped = true;
			}
			if (currentFrameNumber < 3)
				transform.Translate (Vector3.up * jumpFactor);
			if (currentFrameNumber <= 3)
				transform.Translate (Vector3.down * jumpFactor);
			jumpFrames--;
			if (jumpFrames == 0) {
				hasJumped = false;
				iP2.setAirAttack (playerID);
			}
			break;
			
		case "Jump Right":
			if (hasJumped == false) {
				jumpDirection = "forward";
				jumpFrames = 6;
				hasJumped = true;
			}
			if (jumpFrames > 3)
				transform.Translate (Vector3.up * jumpFactor);
			if (jumpFrames <= 3)
				transform.Translate (Vector3.down * jumpFactor);
			gameObject.transform.Translate (Vector3.right * forwardDash/3);
			jumpFrames--;
			if (jumpFrames == 0) {
				hasJumped = false;
				iP2.setAirAttack (playerID);
			}
			break;
			
		case "Jump Left":
			if (hasJumped == false) {
				jumpDirection = "back";
				jumpFrames = 6;
				hasJumped = true;
			}
			if (jumpFrames > 3)
				transform.Translate (Vector3.up * jumpFactor);
			if (jumpFrames <= 3)
				transform.Translate (Vector3.down * jumpFactor);
			gameObject.transform.Translate (-Vector3.right * forwardDash/3);
			jumpFrames--;
			if (jumpFrames == 0) {
				hasJumped = false;
				iP2.setAirAttack (playerID);
			}
			break;
			
			
		case "Air Attack":
			if (jumpFrames > 3)
				transform.Translate (Vector3.up* jumpFactor);
			if (jumpFrames <= 3)
				transform.Translate (Vector3.down * jumpFactor);
			if (jumpDirection == "forward")
				gameObject.transform.Translate (Vector3.right * jumpFactor);
			if (jumpDirection == "back")
				gameObject.transform.Translate (Vector3.right * jumpFactor);
			jumpFrames--;
			
			if(moveCount == 0)
				myLimb.SetHitBox (moveQueue [0]);;
			if(moveCount == 2)
				myLimb.ClearBox();
			
			moveCount++;
			if (moveCount == 3)
				moveCount = 0;
			
			if (jumpFrames == 0) {
				hasJumped = false;
				iP2.setAirAttack (playerID);
				moveCount = 0;
			}
			break;
			
		case "Fireball":
			if (moveCount == 2) {
			}
			moveCount++;
			if (moveCount == 9)
				moveCount = 0;
			break;
			
			
		case "Dino-Punch":
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
		
		
		if (moveQueue [0].framesLeft < 1)
			moveQueue.RemoveAt (0);
		else
			moveQueue [0].framesLeft -= 1;
		yield return null;
		
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
	
	
	public void takeHit (float kback, int damage)
	{
		Debug.Log ("hit taken: " + damage);
		//If not knocked down, assign knockback
		if(kback > 0)
			knockback=kback;
		
		health = health - damage;
		healthBar.HealthUpdate (health);
		//Game Over check
		if (health <= 0)
			iP2.endGame ();
	}
	
	
	public void takeHit (float kback)
	{	ClearStates ();
		knockback = kback;}
	
}
