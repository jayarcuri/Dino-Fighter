using UnityEngine;
using System.Collections;

public class HitboxScript : MonoBehaviour {
	public FrankController myDad;
	public FrankController enemy;
	private int playerID;
	private bool trigger;
	private bool armed;
	private MoveClass thisMove;
	private InputPanel2 controlPanel;
	
	public void SetHitBox(MoveClass move){ //general setter}
		thisMove = new MoveClass(move);
		thisMove.playerID = this.playerID;
		transform.localScale = new Vector3 (thisMove.range, 1f, .5f);
		transform.localPosition = (new Vector3(1-(thisMove.range/2), 0));
		armed = true;
		}

/*	public void SetHitBox(MoveClass move){
		thisMove = new HitClass(move.priority, move.range, move.hitStun, 
		                       move.bStun, move.dmg, move.kB, playerID);
		transform.localScale = new Vector3 (thisMove.range, 1f, .5f);
		transform.localPosition = (new Vector3(1-(move.range/2), 0));
		armed = true;
	}*/

		
	void	OnTriggerStay(Collider x){
		if (x.name == enemy.name || x.name == "hitbox") {
			trigger = true;
			if(armed){
			Debug.Log("Collision occurred - " + x.name + " by " + myDad.name);
			triggerCheck(thisMove);
				armed = false;}
				}
		if (x.name != myDad.name) {
		}
		//Debug.Log("Collision detected by " + myDad.name);
	}

	public void ClearBox(){
		trigger = false;
		armed = false;
		transform.localScale = Vector3.zero;
	}

	public bool triggerCheck(MoveClass hit){
		if (trigger == true) {
			Debug.Log("Sending move");
			if(enemy.wasHit())
			controlPanel.registerHit (hit); // reports move to ControlPanel
			ClearBox();
			return true;
		}	
		return false;
	}

	// Use this for initialization
	void Start () {
		armed = false;
		myDad = GetComponentInParent<FrankController> ();
		playerID = myDad.GetPlayerID();
		controlPanel = FindObjectOfType<InputPanel2> ();
	}

}
