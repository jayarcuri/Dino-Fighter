using UnityEngine;
using System.Collections;

public class SubmitMoveController : MonoBehaviour {

	public string selectedMove{ get; set; }
	public MoveClass currentMove{ get; set; }
	public int ForMoveBlock{ get; set; }
	private InputPanel2 controlPanel;

	void Start(){
		controlPanel = GameObject.Find ("Main Camera").GetComponent<InputPanel2> ();
	}


	public void ReportMove(){ //late night fix for reporting our move to InputPanel, 
								//since Unity UI cannot easily pass multiple parameters to a method
		controlPanel.setBox (ForMoveBlock, currentMove);
	}
	
}
