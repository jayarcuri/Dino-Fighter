using UnityEngine;
using System.Collections;

public class ActionSelectionController : MonoBehaviour {

	public GameObject childPanel;
	public ActionSelectionController otherButton;
	
	// Update is called once per frame
public void Deactivate(){
		childPanel.SetActive (false);
	}

public void Activate(){
		otherButton.Deactivate ();
		childPanel.SetActive (true);
	}

	public void SetChildPanel(GameObject newChild){
		Deactivate ();
		childPanel = newChild;
	}
}
