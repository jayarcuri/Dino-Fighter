using UnityEngine;
using System.Collections;

public class HitboxScript : MonoBehaviour {
	public GameObject enemy;
	public int playerID;
	private bool trigger;
	private bool armed;
	private MoveClass thisMove;
	private InputPanel2 controlPanel;
	public AudioSource[] audioClips;
	
	public void SetHitBox(MoveClass move){ //general setter}
		thisMove = new MoveClass(move);
		thisMove.playerID = this.playerID;
		transform.localScale = new Vector3 (thisMove.range, .2f, .5f);
		transform.localPosition = (new Vector3(1-(thisMove.range/2), 0));
		armed = true;
		int rand = (int)Random.Range (0f, 2f);
		audioClips [rand].Play ();
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
			Debug.Log("Collision occurred - " + x.name + " on " + enemy.name);
			triggerCheck(thisMove);
				armed = false;}
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
			controlPanel.registerHit (hit); // reports move to ControlPanel
			audioClips[2].Play();
			ClearBox();
			return true;
		}	
		return false;
	}

	// Use this for initialization
	void Start () {
		armed = false;
		controlPanel = FindObjectOfType<InputPanel2> ();
	}

}
