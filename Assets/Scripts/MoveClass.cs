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
	public int initialFrames;
	public int playerID { get; set; }//ID for player who started move
	
	public MoveClass(string name){
		this.name = name;
		this.frames = initialFrames = 1;
		this.activeFrames = new int[0];
		hitStun = 0;
		bStun = 0;
		this.priority = 0;
		dmg = 0;
		kB = 0;
		this.range = 0;
	}

	public MoveClass(string name, int frames){
		this.name = name;
		this.frames = initialFrames = frames;
		this.activeFrames = new int[0];
		hitStun = 0;
		bStun = 0;
		this.priority = 0;
		dmg = 0;
		kB = 0;
		this.range = 0;
	}

	public MoveClass(string name, int frames, int[] activeFrames, int hitAdv, int blockAdv, 
	                 int priority, float range, int damage, float knockBack){
		this.name = name;
		this.frames = initialFrames = frames;
		this.activeFrames = activeFrames;
		hitStun = hitAdv;
		bStun = blockAdv;
		this.priority = priority;
		dmg = damage;
		kB = knockBack;
		this.range = range;
	}
}

