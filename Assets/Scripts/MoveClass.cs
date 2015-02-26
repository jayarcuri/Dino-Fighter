using UnityEngine;
using System.Collections;

public class MoveClass
{
	public string name;
	public int frames;
	public int[] activeFrames;
	public int priority;
	public int hitStun; 
	public int bStun;
	public int dmg;
	public float kB;
	public float range;
	public int playerID { get; set; }//ID for player who started move
	
	public MoveClass(string name, int frames, int[] activeFrames, int hitAdv, int blockAdv, 
	                 int priority, float range, int damage, float knockBack/*, int pID*/){
		this.name = name;
		this.frames = frames;
		this.activeFrames = activeFrames;
		hitStun = hitAdv;
		bStun = blockAdv;
		this.priority = priority;
		dmg = damage;
		kB = knockBack;
		this.range = range;
		//playerID = pID;
	}
}

