using UnityEngine;
using System.Collections;

public class HealthBarController : MonoBehaviour
{
	private RectTransform thisBar;
	private float AnchorStart;
	// Use this for initialization
	void Awake ()
	{
		thisBar = this.GetComponent<RectTransform> ();
		AnchorStart = thisBar.anchorMin.x;
	}
	

	public void HealthUpdate(int health){
		thisBar.anchorMax = new Vector2 (AnchorStart+ .33f*(health/60f), 1);
	}
	
}

