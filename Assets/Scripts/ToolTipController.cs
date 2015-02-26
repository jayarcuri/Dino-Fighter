using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class ToolTipController : MonoBehaviour {
	private MoveClass [] myMoves;
	private MoveClass currentMove;
	private RectTransform thisBox;
	private RawImage[] image;
	private GameObject[] frameDataArray;
	private Text overflowText;
	SubmitMoveController submissionButton;
	Vector3 MouseCood;
	public Text moveName;
	public Color ourRed;
	public Color ourGreen;
	public Text damageText;
	// Use this for initialization
	void Start () {
	myMoves = GameObject.Find("Main Camera").GetComponent<MoveDictionary>().getMoves("frank");
		frameDataArray = new GameObject[] {GameObject.Find ("frame0"), GameObject.Find ("frame1"), GameObject.Find ("frame2"), 
			GameObject.Find ("frame3"), GameObject.Find ("frame4"), GameObject.Find ("frame5")};
		thisBox = GetComponent<RectTransform> ();
		overflowText = frameDataArray [5].GetComponentInChildren<Text> ();
		submissionButton = GameObject.Find ("SubmitMoveButton").GetComponent<SubmitMoveController> ();
	}

	void Update(){
		if (MouseCood != null) {
			if (Input.mousePosition != MouseCood){
				foreach(GameObject obj in frameDataArray){
					RectTransform temp = obj.GetComponent<RectTransform>();
					temp.anchorMin = new Vector2( 0.9999f, 0.1f);
					temp.anchorMax = new Vector2( 1,0.9f);
					obj.GetComponent<RawImage>().color = Color.red;
				}
				gameObject.SetActive (false);
			}
		}
	}
	
	public void summonToolTip(string move){

		switch (move){

		case "latk":
			currentMove = myMoves[0];
			break;
		
		case "matk":
			currentMove = myMoves[1];
			break;

		case "hatk":
			currentMove = myMoves[2];
			break;

		case "sp1":
			currentMove = myMoves[3];
			break;

		case "sp2":
			currentMove = myMoves[4];
			break;

		case "throw":
			currentMove = myMoves[5];
			break;

		case "jatk":
			currentMove = myMoves[6];
			break;
		case "jump":
			currentMove = new MoveClass("Jump", 6, new int[0], 0, 0, 0, 0, 0,0);
			break;
		case "ljump":
			currentMove = new MoveClass("Jump Left", 6, new int[0], 0, 0, 0, 0, 0, 0);
			break;
		case "rjump":
			currentMove = new MoveClass("Jump Right", 6, new int[0], 0, 0, 0, 0, 0, 0);
			break;
		case "fdash":
			currentMove = myMoves[7];
			break;
		case "bdash":
			currentMove = myMoves[8];
			break;

		case "forward":
			currentMove = new MoveClass("Walk Forward", 1, new int[0], 0, 0, 0, 0,0,0);
			break;

		case "back":
				currentMove = new MoveClass("Walk Back", 1, new int[0], 0, 0, 0, 0,0,0);
			break;

		case "defend":
			currentMove = new MoveClass("Defend", 1, new int[0], 0, 0, 0, 0,0,0);
			break;

		default:
				break;
		}
		if (currentMove.dmg < 1)
			damageText.text = "--";
		else
			damageText.text = currentMove.dmg.ToString();

		moveName.text = currentMove.name;
		submissionButton.currentMove = this.currentMove;
		MouseCood = Input.mousePosition;
		float margin = (1.02f - Mathf.Clamp(currentMove.frames, 1.0f, 6.0f) * 0.15f) / 2;

		foreach (int i in currentMove.activeFrames) {
			if(i>0)
			frameDataArray[i-1].GetComponent<RawImage>().color = Color.green;
		}

		for (int i = 0; i < currentMove.frames && i < 6; i++) {
			RectTransform temp = frameDataArray[i].GetComponent<RectTransform>();
			temp.anchorMin = new Vector2( margin + 0.15f * (i), 0.1f);
			//print (margin + 0.15f * (i));
			temp.anchorMax = new Vector2( margin + 0.15f * (i) + 0.13f,0.9f);
		}
		if (currentMove.frames > 6)
			overflowText.text = "+" + (currentMove.frames - 6).ToString ();
		else
			overflowText.text = "";
	}
}
