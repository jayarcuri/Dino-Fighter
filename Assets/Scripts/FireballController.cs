using UnityEngine;
using System.Collections;

public class FireballController : MonoBehaviour {
	public float speed;
	private MoveClass payload = new MoveClass ("Fireball", 9, new int[] {3}, 0, -1, 0, .75f, 8, .75f);
	private GameObject target;
	InputPanel2 controlPanel;

	public void myTarget(GameObject trgt){
		target = trgt;
	}

	void OnTriggerStay(Collider other){
		print ("triggered");
		if (other.gameObject.name == name+"(Clone)" || other.gameObject.name == name) {
			Destroy (gameObject);
		}
		if (other.name == target.name) {
		controlPanel.registerHit (payload);
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
