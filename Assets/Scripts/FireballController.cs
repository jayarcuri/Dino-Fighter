using UnityEngine;
using System.Collections;

public class FireballController : MonoBehaviour {
	public float speed;
	private FrankController target;
	InputPanel2 controlPanel;
	public void myTarget(FrankController trgt){
		target = trgt;
	}

	void OnTriggerStay(Collider other){
		print ("triggered");
		if (other.gameObject.name == name+"(Clone)" || other.gameObject.name == name) {
			Destroy (gameObject);
		}
		if (other.name == target.name) {
		controlPanel.registerHit (new HitClass(0, 0, 6, 5, 8, .75f, (target.playerID+1)%2));
		Destroy (gameObject);
		}
	}

void Start(){
		controlPanel = GameObject.Find ("Main Camera").GetComponent<InputPanel2> ();
	}
	
	// Update is called once per frame
	public void nextMove () {

		if (transform.position.x > 12 || transform.position.x < -12)
			Destroy (this);
		else {
			transform.Translate(Vector3.right * speed);
		}
	}
}
