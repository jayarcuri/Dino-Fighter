using UnityEngine;
using System.Collections;

public class HitboxScript : MonoBehaviour {
/*	int priority = 0;
	float range = 0; 
	int hitstun = 0; 
	int blockstun = 0; 
	int damage = 0; 
	float knockback =0;*/
	public FrankController myDad;
	public FrankController enemy;
	private int playerID;
	private bool trigger;
	private bool armed;
	private HitClass thisMove;
	private Collider thisBox;
	private InputPanel2 controlPanel;
	
	public void SetHitBox(int inputPriority, float inputRange, int inputHitstun, 
	                      int inputBlockstun, int inputDamage, float inputKnockback){ //general setter}
		thisMove = new HitClass(inputPriority, inputRange, inputHitstun, 
		                        inputBlockstun, inputDamage, inputKnockback, playerID);
		transform.localScale = new Vector3 (thisMove.range, 1f, .5f);
		transform.localPosition = (new Vector3(1-(inputRange/2), 0));
		armed = true;
		}

		
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

	void OnTriggerExit(){
		//Debug.Log ("Collision ended");
		//trigger = false;
	}

	public void ClearBox(){
		trigger = false;
		armed = false;
		transform.localScale = Vector3.zero;
	}

	public bool triggerCheck(HitClass hit){
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
		thisBox = GetComponent<Collider> ();
		myDad = GetComponentInParent<FrankController> ();
		playerID = myDad.GetPlayerID();
		controlPanel = FindObjectOfType<InputPanel2> ();
	}

}
