using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class GUIFrameController : MonoBehaviour {
	
	string selectedMove;
	public MoveClass currentMove{ get; set; }
	public int ForMoveBlock{ get; set; }
	public GameObject[] attackPanelChoices;
	public Button movementButton, defendButton;
	private Text[] MoveBlockText;
	ActionSelectionController moveMenu;
	ActionSelectionController attackMenu;
	Button submitButton;
	ToolTipController toolTipScript;
	GameObject toolTip;
	private InputPanel2 controlPanel;
	
	void Awake(){
		MoveBlockText = GameObject.Find ("QueueFrame").GetComponentsInChildren<Text> ();
		controlPanel = GameObject.Find ("Main Camera").GetComponent<InputPanel2> ();
		submitButton = GameObject.Find ("SubmitMoveButton").GetComponent<Button>();
		toolTip = GameObject.Find ("MoveToolTip");
		toolTipScript = toolTip.GetComponent<ToolTipController>();
		moveMenu = GameObject.Find ("MoveTog").GetComponent<ActionSelectionController> ();
		attackMenu = GameObject.Find ("AttackTog").GetComponent<ActionSelectionController> ();
	}

	public void SetGUIFrame(int boxNumber){
		ForMoveBlock = boxNumber;
		switch (controlPanel.MoveAt(boxNumber).name) {

			case "Forward Air Attack":
			case "Vertical Air Attack":
			case "Backwards Air Attack":
			case "Jump Left":
			case "Jump":
			case "Jump Right":
			movementButton.interactable = defendButton.interactable 
				= false;
					attackPanelChoices[0].SetActive (false);
			attackMenu.childPanel = attackPanelChoices[1];
			break;

		default:
			movementButton.interactable = defendButton.interactable 
				= true;
			attackMenu.childPanel = attackPanelChoices[0];
			break;

		}
	}

	public void SetSelectedMove(string move){
		selectedMove = move;
		toolTip.SetActive (true);
			toolTipScript.summonToolTip (move);
		submitButton.interactable = true;
	}
	
	
	public void ReportMove(){ 
		controlPanel.setBox (ForMoveBlock, new MoveClass(currentMove)); //Creates deep copy of currentMove for character
																	//so the original is not corrupted
	}
	
}
