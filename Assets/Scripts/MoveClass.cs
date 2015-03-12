using UnityEngine;
using System.Collections;

public class MoveClass
{
	public string name;
	public int framesLeft; //number of blocks a move takes
	public int[] activeFrames; //each part of the array is one frame where the attack can hurt, 
	//and the number of that element is what frame it occurs on
	public int recovery;
	public int priority; //unimplemented
	public int hitStun; //how many blocks to queue on opponent if hit
	public int bStun; //HitAdv but for blocking the move
	public int dmg;	//What do you think, hotshot?
	public float kB; //total distance a character should move when hit
	public float range; //range of hitbox
	public int initialFrames;
	public int playerID;//ID for player who started move


	public MoveClass(string name){
		this.name = name;
		this.framesLeft = initialFrames = 1;
		this.activeFrames = new int[0];
		hitStun = 0;
		bStun = 0;
		this.priority = 0;
		dmg = 0;
		kB = 0;
		this.range = 0;
		recovery = 0;
	}

	public MoveClass(string name, int frames){
		this.name = name;
		this.framesLeft = initialFrames = frames;
		this.activeFrames = new int[0];
		hitStun = 0;
		bStun = 0;
		this.priority = 0;
		dmg = 0;
		kB = 0;
		this.range = 0;
		recovery = 0;
	}

	public MoveClass(MoveClass copy){
		this.name = copy.name;
		this.framesLeft = this.initialFrames = copy.initialFrames;
		this.activeFrames = copy.activeFrames;
		hitStun = copy.hitStun;
		bStun = copy.bStun;
		this.priority = copy.priority;
		dmg = copy.dmg;
		kB = copy.kB;
		this.range = copy.range;
		this.recovery = copy.recovery;
	}

	public MoveClass(string name, int frames, int[] activeFrames, int hitAdv, int blockAdv, 
	                 int priority, float range, int damage, float knockBack){
		this.name = name;
		this.framesLeft = this.initialFrames = frames;
		this.activeFrames = activeFrames;
		hitStun = hitAdv;
		bStun = blockAdv;
		this.priority = priority;
		dmg = damage;
		kB = knockBack;
		this.range = range;
		if (activeFrames.Length > 0)
			recovery = initialFrames - activeFrames [activeFrames.Length - 1];
	}

	public MoveClass(string name, int initialFrames, int[] activeFrames, int hitAdv, int blockAdv, 
	                 int priority, float range, int damage, float knockBack, int frames){
		this.name = name;
		this.initialFrames = initialFrames;
		this.activeFrames = activeFrames;
		hitStun = hitAdv;
		bStun = blockAdv;
		this.priority = priority;
		dmg = damage;
		kB = knockBack;
		this.range = range;
		this.framesLeft = frames;
		if (activeFrames.Length > 0)
			recovery = initialFrames - activeFrames [activeFrames.Length - 1];
	}
}

