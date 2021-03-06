﻿using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class ToolTipController : MonoBehaviour {
	private MoveClass [] myMoves;
	private MoveClass [] rexMoves;
	private MoveClass[] speedyMoves;
	private MoveClass currentMove;
	private RectTransform thisBox;
	private Image[] image;
	private GameObject[] frameDataArray;
	private Text overflowText;
	GUIFrameController GUIFrame;
	Vector3 MouseCood;
	public Text moveName;
	public Color ourRed;
	public Color ourGreen;
	public Text damageText;
	// Use this for initialization
	void Start () {
	myMoves = GameObject.Find("Main Camera").GetComponent<MoveDictionary>().getMoves("frank");
		rexMoves  = GameObject.Find("Main Camera").GetComponent<MoveDictionary>().getMoves("king");
		speedyMoves  = GameObject.Find("Main Camera").GetComponent<MoveDictionary>().getMoves("speedy");

		frameDataArray = new GameObject[] {GameObject.Find ("frame0"), GameObject.Find ("frame1"), GameObject.Find ("frame2"), 
			GameObject.Find ("frame3"), GameObject.Find ("frame4"), GameObject.Find ("frame5")};
		thisBox = GetComponent<RectTransform> ();
		overflowText = frameDataArray [5].GetComponentInChildren<Text> ();
		GUIFrame = GameObject.Find ("GUIFrame").GetComponent<GUIFrameController> ();
	}

	void Update(){
		if (MouseCood != null) {
			if (Input.mousePosition != MouseCood){
				foreach(GameObject obj in frameDataArray){
					RectTransform temp = obj.GetComponent<RectTransform>();
					temp.anchorMin = new Vector2( 0.9999f, 0.1f);
					temp.anchorMax = new Vector2( 1,0.9f);
					obj.GetComponent<Image>().color = Color.red;
				}
				gameObject.SetActive (false);
			}
		}
	}

	public void summonToolTip(string move){

		if (GameObject.Find ("Main Camera").GetComponent<InputPanel2> ().getPlayerTurn () == 0) {
			switch (move) {

			case "latk":
				currentMove = rexMoves [0];
				break;
		
			case "matk":
				currentMove = rexMoves [1];
				break;

			case "hatk":
				currentMove = rexMoves [2];
				break;

			case "sp1":
				currentMove = rexMoves [3];
				break;

			case "sp2":
				currentMove = rexMoves [4];
				break;

			case "throw":
				currentMove = rexMoves [5];
				break;

			case "jump attack":
				currentMove = rexMoves [6];
				break;
			case "jump":
				currentMove = new MoveClass ("Jump", 5);
				break;
			case "ljump":
				currentMove = new MoveClass ("Jump Left", 5);
				break;
			case "rjump":
				currentMove = new MoveClass ("Jump Right", 5);
				break;
			case "rdash":
				currentMove = rexMoves [7];
				break;
			case "ldash":
				currentMove = rexMoves [8];
				break;

			case "right":
				currentMove = new MoveClass ("Walk Forward");
				break;

			case "left":
				currentMove = new MoveClass ("Walk Back");
				break;

			case "defend":
				currentMove = new MoveClass ("Defend");
				break;

			default:
				break;
			}
		}
		if (GameObject.Find ("Main Camera").GetComponent<InputPanel2> ().getPlayerTurn () == 1) {
			switch (move) {
				
			case "latk":
				currentMove = speedyMoves [0];
				break;
				
			case "matk":
				currentMove = speedyMoves [1];
				break;
				
			case "hatk":
				currentMove = speedyMoves [2];
				break;
				
			case "sp1":
				currentMove = speedyMoves [3];
				break;
				
			case "sp2":
				currentMove = speedyMoves [4];
				break;
				
			case "throw":
				currentMove = speedyMoves [5];
				break;
				
			case "jump attack":
				currentMove = speedyMoves [6];
				break;
			case "jump":
				currentMove = new MoveClass ("Jump", 5);
				break;
			case "ljump":
				currentMove = new MoveClass ("Jump Left", 5);
				break;
			case "rjump":
				currentMove = new MoveClass ("Jump Right", 5);
				break;
			case "rdash":
				currentMove = speedyMoves [7];
				break;
			case "ldash":
				currentMove = speedyMoves [8];
				break;
				
			case "right":
				currentMove = new MoveClass ("Walk Forward");
				break;
				
			case "left":
				currentMove = new MoveClass ("Walk Back");
				break;
				
			case "defend":
				currentMove = new MoveClass ("Defend");
				break;
				
			default:
				break;
			}
		}

		if (currentMove.dmg < 1)
			damageText.text = "--";
		else
			damageText.text = currentMove.dmg.ToString();

		moveName.text = currentMove.name;
		GUIFrame.currentMove = this.currentMove;
		MouseCood = Input.mousePosition;
		float margin = (1.02f - Mathf.Clamp(currentMove.initialFrames, 1.0f, 6.0f) * 0.15f) / 2;

		foreach (int i in currentMove.activeFrames) {
			if(i>0)
			frameDataArray[i-1].GetComponent<Image>().color = Color.green;
		}

		for (int i = 0; i < currentMove.initialFrames && i < 6; i++) {
			RectTransform temp = frameDataArray[i].GetComponent<RectTransform>();
			temp.anchorMin = new Vector2( margin + 0.15f * (i), 0.1f);
			//print (margin + 0.15f * (i));
			temp.anchorMax = new Vector2( margin + 0.15f * (i) + 0.13f,0.9f);
		}
		if (currentMove.initialFrames > 6)
			overflowText.text = "+" + (currentMove.initialFrames - 6).ToString ();
		else
			overflowText.text = "";
	}
}
